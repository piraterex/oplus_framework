.class public Landroid/security/keystore2/AndroidKeyStoreProvider;
.super Ljava/security/Provider;
.source "AndroidKeyStoreProvider.java"


# static fields
.field private static final blacklist DESEDE_SYSTEM_PROPERTY:Ljava/lang/String; = "ro.hardware.keystore_desede"

.field private static final blacklist ED25519_OID:Ljava/lang/String; = "1.3.101.112"

.field private static final blacklist PACKAGE_NAME:Ljava/lang/String; = "android.security.keystore2"

.field private static final blacklist PROVIDER_NAME:Ljava/lang/String; = "AndroidKeyStore"

.field private static final blacklist X25519_ALIAS:Ljava/lang/String; = "XDH"


# direct methods
.method public constructor blacklist <init>()V
    .locals 4

    .line 76
    const-string v0, "AndroidKeyStore"

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-string v3, "Android KeyStore security provider"

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 78
    const-string/jumbo v0, "ro.hardware.keystore_desede"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 81
    .local v0, "supports3DES":Z
    const-string v1, "KeyStore.AndroidKeyStore"

    const-string v2, "android.security.keystore2.AndroidKeyStoreSpi"

    invoke-virtual {p0, v1, v2}, Landroid/security/keystore2/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v1, "KeyPairGenerator.EC"

    const-string v2, "android.security.keystore2.AndroidKeyStoreKeyPairGeneratorSpi$EC"

    invoke-virtual {p0, v1, v2}, Landroid/security/keystore2/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v1, "KeyPairGenerator.RSA"

    const-string v2, "android.security.keystore2.AndroidKeyStoreKeyPairGeneratorSpi$RSA"

    invoke-virtual {p0, v1, v2}, Landroid/security/keystore2/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v1, "KeyPairGenerator.XDH"

    const-string v2, "android.security.keystore2.AndroidKeyStoreKeyPairGeneratorSpi$XDH"

    invoke-virtual {p0, v1, v2}, Landroid/security/keystore2/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v1, "EC"

    invoke-direct {p0, v1}, Landroid/security/keystore2/AndroidKeyStoreProvider;->putKeyFactoryImpl(Ljava/lang/String;)V

    .line 90
    const-string v1, "RSA"

    invoke-direct {p0, v1}, Landroid/security/keystore2/AndroidKeyStoreProvider;->putKeyFactoryImpl(Ljava/lang/String;)V

    .line 91
    const-string v1, "XDH"

    invoke-direct {p0, v1}, Landroid/security/keystore2/AndroidKeyStoreProvider;->putKeyFactoryImpl(Ljava/lang/String;)V

    .line 94
    const-string v1, "KeyGenerator.AES"

    const-string v2, "android.security.keystore2.AndroidKeyStoreKeyGeneratorSpi$AES"

    invoke-virtual {p0, v1, v2}, Landroid/security/keystore2/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v1, "KeyGenerator.HmacSHA1"

    const-string v2, "android.security.keystore2.AndroidKeyStoreKeyGeneratorSpi$HmacSHA1"

    invoke-virtual {p0, v1, v2}, Landroid/security/keystore2/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v1, "KeyGenerator.HmacSHA224"

    const-string v2, "android.security.keystore2.AndroidKeyStoreKeyGeneratorSpi$HmacSHA224"

    invoke-virtual {p0, v1, v2}, Landroid/security/keystore2/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v1, "KeyGenerator.HmacSHA256"

    const-string v2, "android.security.keystore2.AndroidKeyStoreKeyGeneratorSpi$HmacSHA256"

    invoke-virtual {p0, v1, v2}, Landroid/security/keystore2/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v1, "KeyGenerator.HmacSHA384"

    const-string v2, "android.security.keystore2.AndroidKeyStoreKeyGeneratorSpi$HmacSHA384"

    invoke-virtual {p0, v1, v2}, Landroid/security/keystore2/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v1, "KeyGenerator.HmacSHA512"

    const-string v2, "android.security.keystore2.AndroidKeyStoreKeyGeneratorSpi$HmacSHA512"

    invoke-virtual {p0, v1, v2}, Landroid/security/keystore2/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    if-eqz v0, :cond_0

    .line 102
    const-string v1, "KeyGenerator.DESede"

    const-string v2, "android.security.keystore2.AndroidKeyStoreKeyGeneratorSpi$DESede"

    invoke-virtual {p0, v1, v2}, Landroid/security/keystore2/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_0
    const-string v1, "KeyAgreement.ECDH"

    const-string v2, "android.security.keystore2.AndroidKeyStoreKeyAgreementSpi$ECDH"

    invoke-virtual {p0, v1, v2}, Landroid/security/keystore2/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v1, "KeyAgreement.XDH"

    const-string v2, "android.security.keystore2.AndroidKeyStoreKeyAgreementSpi$XDH"

    invoke-virtual {p0, v1, v2}, Landroid/security/keystore2/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v1, "AES"

    invoke-direct {p0, v1}, Landroid/security/keystore2/AndroidKeyStoreProvider;->putSecretKeyFactoryImpl(Ljava/lang/String;)V

    .line 111
    if-eqz v0, :cond_1

    .line 112
    const-string v1, "DESede"

    invoke-direct {p0, v1}, Landroid/security/keystore2/AndroidKeyStoreProvider;->putSecretKeyFactoryImpl(Ljava/lang/String;)V

    .line 114
    :cond_1
    const-string v1, "HmacSHA1"

    invoke-direct {p0, v1}, Landroid/security/keystore2/AndroidKeyStoreProvider;->putSecretKeyFactoryImpl(Ljava/lang/String;)V

    .line 115
    const-string v1, "HmacSHA224"

    invoke-direct {p0, v1}, Landroid/security/keystore2/AndroidKeyStoreProvider;->putSecretKeyFactoryImpl(Ljava/lang/String;)V

    .line 116
    const-string v1, "HmacSHA256"

    invoke-direct {p0, v1}, Landroid/security/keystore2/AndroidKeyStoreProvider;->putSecretKeyFactoryImpl(Ljava/lang/String;)V

    .line 117
    const-string v1, "HmacSHA384"

    invoke-direct {p0, v1}, Landroid/security/keystore2/AndroidKeyStoreProvider;->putSecretKeyFactoryImpl(Ljava/lang/String;)V

    .line 118
    const-string v1, "HmacSHA512"

    invoke-direct {p0, v1}, Landroid/security/keystore2/AndroidKeyStoreProvider;->putSecretKeyFactoryImpl(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public static blacklist getKeyStoreOperationHandle(Ljava/lang/Object;)J
    .locals 4
    .param p0, "cryptoPrimitive"    # Ljava/lang/Object;

    .line 173
    if-eqz p0, :cond_5

    .line 177
    instance-of v0, p0, Ljava/security/Signature;

    if-eqz v0, :cond_0

    .line 178
    move-object v0, p0

    check-cast v0, Ljava/security/Signature;

    invoke-virtual {v0}, Ljava/security/Signature;->getCurrentSpi()Ljava/security/SignatureSpi;

    move-result-object v0

    .local v0, "spi":Ljava/lang/Object;
    goto :goto_0

    .line 179
    .end local v0    # "spi":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, Ljavax/crypto/Mac;

    if-eqz v0, :cond_1

    .line 180
    move-object v0, p0

    check-cast v0, Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->getCurrentSpi()Ljavax/crypto/MacSpi;

    move-result-object v0

    .restart local v0    # "spi":Ljava/lang/Object;
    goto :goto_0

    .line 181
    .end local v0    # "spi":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Ljavax/crypto/Cipher;

    if-eqz v0, :cond_4

    .line 182
    move-object v0, p0

    check-cast v0, Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getCurrentSpi()Ljavax/crypto/CipherSpi;

    move-result-object v0

    .line 187
    .restart local v0    # "spi":Ljava/lang/Object;
    :goto_0
    if-eqz v0, :cond_3

    .line 189
    instance-of v1, v0, Landroid/security/keystore/KeyStoreCryptoOperation;

    if-eqz v1, :cond_2

    .line 194
    move-object v1, v0

    check-cast v1, Landroid/security/keystore/KeyStoreCryptoOperation;

    invoke-interface {v1}, Landroid/security/keystore/KeyStoreCryptoOperation;->getOperationHandle()J

    move-result-wide v1

    return-wide v1

    .line 190
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Crypto primitive not backed by AndroidKeyStore provider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", spi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 188
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Crypto primitive not initialized"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 184
    .end local v0    # "spi":Ljava/lang/Object;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported crypto primitive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Supported: Signature, Mac, Cipher"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static blacklist install()V
    .locals 6

    .line 127
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v0

    .line 128
    .local v0, "providers":[Ljava/security/Provider;
    const/4 v1, -0x1

    .line 129
    .local v1, "bcProviderIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 130
    aget-object v3, v0, v2

    .line 131
    .local v3, "provider":Ljava/security/Provider;
    invoke-virtual {v3}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BC"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 132
    move v1, v2

    .line 133
    goto :goto_1

    .line 129
    .end local v3    # "provider":Ljava/security/Provider;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 137
    .end local v2    # "i":I
    :cond_1
    :goto_1
    new-instance v2, Landroid/security/keystore2/AndroidKeyStoreProvider;

    invoke-direct {v2}, Landroid/security/keystore2/AndroidKeyStoreProvider;-><init>()V

    invoke-static {v2}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 138
    new-instance v2, Landroid/security/keystore2/AndroidKeyStoreBCWorkaroundProvider;

    invoke-direct {v2}, Landroid/security/keystore2/AndroidKeyStoreBCWorkaroundProvider;-><init>()V

    .line 139
    .local v2, "workaroundProvider":Ljava/security/Provider;
    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 142
    add-int/lit8 v3, v1, 0x1

    invoke-static {v2, v3}, Ljava/security/Security;->insertProviderAt(Ljava/security/Provider;I)I

    goto :goto_2

    .line 146
    :cond_2
    invoke-static {v2}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 148
    :goto_2
    return-void
.end method

.method private static blacklist loadAndroidKeyStoreKeyFromKeystore(Landroid/security/KeyStore2;Landroid/system/keystore2/KeyDescriptor;)Landroid/security/keystore2/AndroidKeyStoreKey;
    .locals 8
    .param p0, "keyStore"    # Landroid/security/KeyStore2;
    .param p1, "descriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;,
            Landroid/security/keystore/KeyPermanentlyInvalidatedException;
        }
    .end annotation

    .line 363
    const/4 v0, 0x0

    .line 365
    .local v0, "response":Landroid/system/keystore2/KeyEntryResponse;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/security/KeyStore2;->getKeyEntry(Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object v2
    :try_end_0
    .catch Landroid/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 379
    nop

    .line 381
    iget-object v2, v0, Landroid/system/keystore2/KeyEntryResponse;->iSecurityLevel:Landroid/system/keystore2/IKeystoreSecurityLevel;

    if-nez v2, :cond_0

    .line 383
    return-object v1

    .line 386
    :cond_0
    const/4 v1, 0x0

    .line 388
    .local v1, "keymasterAlgorithm":Ljava/lang/Integer;
    const/4 v2, -0x1

    .line 389
    .local v2, "keymasterDigest":I
    iget-object v3, v0, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v3, v3, Landroid/system/keystore2/KeyMetadata;->authorizations:[Landroid/system/keystore2/Authorization;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 390
    .local v6, "a":Landroid/system/keystore2/Authorization;
    iget-object v7, v6, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget v7, v7, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    sparse-switch v7, :sswitch_data_0

    goto :goto_1

    .line 395
    :sswitch_0
    const/4 v7, -0x1

    if-ne v2, v7, :cond_1

    iget-object v7, v6, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget-object v7, v7, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v7}, Landroid/hardware/security/keymint/KeyParameterValue;->getDigest()I

    move-result v2

    goto :goto_1

    .line 392
    :sswitch_1
    iget-object v7, v6, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget-object v7, v7, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v7}, Landroid/hardware/security/keymint/KeyParameterValue;->getAlgorithm()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 393
    nop

    .line 389
    .end local v6    # "a":Landroid/system/keystore2/Authorization;
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 399
    :cond_2
    const-string v3, "Key algorithm unknown"

    if-eqz v1, :cond_7

    .line 403
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x80

    if-eq v4, v5, :cond_6

    .line 404
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_6

    .line 405
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x21

    if-ne v4, v5, :cond_3

    goto :goto_3

    .line 408
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_5

    .line 409
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    goto :goto_2

    .line 414
    :cond_4
    new-instance v4, Ljava/security/UnrecoverableKeyException;

    invoke-direct {v4, v3}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 410
    :cond_5
    :goto_2
    iget-object v3, v0, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    new-instance v4, Landroid/security/KeyStoreSecurityLevel;

    iget-object v5, v0, Landroid/system/keystore2/KeyEntryResponse;->iSecurityLevel:Landroid/system/keystore2/IKeystoreSecurityLevel;

    invoke-direct {v4, v5}, Landroid/security/KeyStoreSecurityLevel;-><init>(Landroid/system/keystore2/IKeystoreSecurityLevel;)V

    .line 412
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 410
    invoke-static {p1, v3, v4, v5}, Landroid/security/keystore2/AndroidKeyStoreProvider;->makeAndroidKeyStorePublicKeyFromKeyEntryResponse(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyMetadata;Landroid/security/KeyStoreSecurityLevel;I)Landroid/security/keystore2/AndroidKeyStorePublicKey;

    move-result-object v3

    return-object v3

    .line 406
    :cond_6
    :goto_3
    nop

    .line 407
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 406
    invoke-static {p1, v0, v3, v2}, Landroid/security/keystore2/AndroidKeyStoreProvider;->makeAndroidKeyStoreSecretKeyFromKeyEntryResponse(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyEntryResponse;II)Landroid/security/keystore2/AndroidKeyStoreSecretKey;

    move-result-object v3

    return-object v3

    .line 400
    :cond_7
    new-instance v4, Ljava/security/UnrecoverableKeyException;

    invoke-direct {v4, v3}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 366
    .end local v1    # "keymasterAlgorithm":Ljava/lang/Integer;
    .end local v2    # "keymasterDigest":I
    :catch_0
    move-exception v2

    .line 367
    .local v2, "e":Landroid/security/KeyStoreException;
    invoke-virtual {v2}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_1

    .line 375
    new-instance v1, Ljava/security/UnrecoverableKeyException;

    const-string v3, "Failed to obtain information about key"

    invoke-direct {v1, v3}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    .line 377
    invoke-virtual {v1, v2}, Ljava/security/UnrecoverableKeyException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/security/UnrecoverableKeyException;

    throw v1

    .line 371
    :sswitch_2
    new-instance v1, Landroid/security/keystore/KeyPermanentlyInvalidatedException;

    const-string v3, "User changed or deleted their auth credentials"

    invoke-direct {v1, v3, v2}, Landroid/security/keystore/KeyPermanentlyInvalidatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 369
    :sswitch_3
    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x10000002 -> :sswitch_1
        0x20000005 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x7 -> :sswitch_3
        0x11 -> :sswitch_2
    .end sparse-switch
.end method

.method public static blacklist loadAndroidKeyStoreKeyFromKeystore(Landroid/security/KeyStore2;Ljava/lang/String;I)Landroid/security/keystore2/AndroidKeyStoreKey;
    .locals 3
    .param p0, "keyStore"    # Landroid/security/KeyStore2;
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "namespace"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;,
            Landroid/security/keystore/KeyPermanentlyInvalidatedException;
        }
    .end annotation

    .line 341
    new-instance v0, Landroid/system/keystore2/KeyDescriptor;

    invoke-direct {v0}, Landroid/system/keystore2/KeyDescriptor;-><init>()V

    .line 342
    .local v0, "descriptor":Landroid/system/keystore2/KeyDescriptor;
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 343
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    .line 344
    const/4 v1, 0x0

    iput v1, v0, Landroid/system/keystore2/KeyDescriptor;->domain:I

    goto :goto_0

    .line 346
    :cond_0
    int-to-long v1, p2

    iput-wide v1, v0, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    .line 347
    const/4 v1, 0x2

    iput v1, v0, Landroid/system/keystore2/KeyDescriptor;->domain:I

    .line 349
    :goto_0
    iput-object p1, v0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    .line 350
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/system/keystore2/KeyDescriptor;->blob:[B

    .line 352
    invoke-static {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreProvider;->loadAndroidKeyStoreKeyFromKeystore(Landroid/security/KeyStore2;Landroid/system/keystore2/KeyDescriptor;)Landroid/security/keystore2/AndroidKeyStoreKey;

    move-result-object v1

    .line 353
    .local v1, "key":Landroid/security/keystore2/AndroidKeyStoreKey;
    instance-of v2, v1, Landroid/security/keystore2/AndroidKeyStorePublicKey;

    if-eqz v2, :cond_1

    .line 354
    move-object v2, v1

    check-cast v2, Landroid/security/keystore2/AndroidKeyStorePublicKey;

    invoke-virtual {v2}, Landroid/security/keystore2/AndroidKeyStorePublicKey;->getPrivateKey()Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    move-result-object v2

    return-object v2

    .line 356
    :cond_1
    return-object v1
.end method

.method public static blacklist loadAndroidKeyStoreKeyPairFromKeystore(Landroid/security/KeyStore2;Landroid/system/keystore2/KeyDescriptor;)Ljava/security/KeyPair;
    .locals 4
    .param p0, "keyStore"    # Landroid/security/KeyStore2;
    .param p1, "descriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;,
            Landroid/security/keystore/KeyPermanentlyInvalidatedException;
        }
    .end annotation

    .line 266
    nop

    .line 267
    invoke-static {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreProvider;->loadAndroidKeyStoreKeyFromKeystore(Landroid/security/KeyStore2;Landroid/system/keystore2/KeyDescriptor;)Landroid/security/keystore2/AndroidKeyStoreKey;

    move-result-object v0

    .line 268
    .local v0, "key":Landroid/security/keystore2/AndroidKeyStoreKey;
    instance-of v1, v0, Landroid/security/keystore2/AndroidKeyStorePublicKey;

    if-eqz v1, :cond_0

    .line 269
    move-object v1, v0

    check-cast v1, Landroid/security/keystore2/AndroidKeyStorePublicKey;

    .line 270
    .local v1, "publicKey":Landroid/security/keystore2/AndroidKeyStorePublicKey;
    new-instance v2, Ljava/security/KeyPair;

    invoke-virtual {v1}, Landroid/security/keystore2/AndroidKeyStorePublicKey;->getPrivateKey()Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v2

    .line 272
    .end local v1    # "publicKey":Landroid/security/keystore2/AndroidKeyStorePublicKey;
    :cond_0
    new-instance v1, Ljava/security/UnrecoverableKeyException;

    const-string v2, "No asymmetric key found by the given alias."

    invoke-direct {v1, v2}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist loadAndroidKeyStorePrivateKeyFromKeystore(Landroid/security/KeyStore2;Ljava/lang/String;I)Landroid/security/keystore2/AndroidKeyStorePrivateKey;
    .locals 3
    .param p0, "keyStore"    # Landroid/security/KeyStore2;
    .param p1, "privateKeyAlias"    # Ljava/lang/String;
    .param p2, "namespace"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;,
            Landroid/security/keystore/KeyPermanentlyInvalidatedException;
        }
    .end annotation

    .line 281
    nop

    .line 282
    invoke-static {p0, p1, p2}, Landroid/security/keystore2/AndroidKeyStoreProvider;->loadAndroidKeyStoreKeyFromKeystore(Landroid/security/KeyStore2;Ljava/lang/String;I)Landroid/security/keystore2/AndroidKeyStoreKey;

    move-result-object v0

    .line 283
    .local v0, "key":Landroid/security/keystore2/AndroidKeyStoreKey;
    instance-of v1, v0, Landroid/security/keystore2/AndroidKeyStorePublicKey;

    if-eqz v1, :cond_0

    .line 284
    move-object v1, v0

    check-cast v1, Landroid/security/keystore2/AndroidKeyStorePublicKey;

    invoke-virtual {v1}, Landroid/security/keystore2/AndroidKeyStorePublicKey;->getPrivateKey()Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    move-result-object v1

    return-object v1

    .line 286
    :cond_0
    new-instance v1, Ljava/security/UnrecoverableKeyException;

    const-string v2, "No asymmetric key found by the given alias."

    invoke-direct {v1, v2}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist loadAndroidKeyStorePublicKeyFromKeystore(Landroid/security/KeyStore2;Ljava/lang/String;I)Landroid/security/keystore2/AndroidKeyStorePublicKey;
    .locals 3
    .param p0, "keyStore"    # Landroid/security/KeyStore2;
    .param p1, "privateKeyAlias"    # Ljava/lang/String;
    .param p2, "namespace"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;,
            Landroid/security/keystore/KeyPermanentlyInvalidatedException;
        }
    .end annotation

    .line 252
    nop

    .line 253
    invoke-static {p0, p1, p2}, Landroid/security/keystore2/AndroidKeyStoreProvider;->loadAndroidKeyStoreKeyFromKeystore(Landroid/security/KeyStore2;Ljava/lang/String;I)Landroid/security/keystore2/AndroidKeyStoreKey;

    move-result-object v0

    .line 254
    .local v0, "key":Landroid/security/keystore2/AndroidKeyStoreKey;
    instance-of v1, v0, Landroid/security/keystore2/AndroidKeyStorePublicKey;

    if-eqz v1, :cond_0

    .line 255
    move-object v1, v0

    check-cast v1, Landroid/security/keystore2/AndroidKeyStorePublicKey;

    return-object v1

    .line 257
    :cond_0
    new-instance v1, Ljava/security/UnrecoverableKeyException;

    const-string v2, "No asymmetric key found by the given alias."

    invoke-direct {v1, v2}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist loadAndroidKeyStoreSecretKeyFromKeystore(Landroid/security/KeyStore2;Landroid/system/keystore2/KeyDescriptor;)Ljavax/crypto/SecretKey;
    .locals 3
    .param p0, "keyStore"    # Landroid/security/KeyStore2;
    .param p1, "descriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;,
            Landroid/security/keystore/KeyPermanentlyInvalidatedException;
        }
    .end annotation

    .line 296
    nop

    .line 297
    invoke-static {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreProvider;->loadAndroidKeyStoreKeyFromKeystore(Landroid/security/KeyStore2;Landroid/system/keystore2/KeyDescriptor;)Landroid/security/keystore2/AndroidKeyStoreKey;

    move-result-object v0

    .line 298
    .local v0, "key":Landroid/security/keystore2/AndroidKeyStoreKey;
    instance-of v1, v0, Ljavax/crypto/SecretKey;

    if-eqz v1, :cond_0

    .line 299
    move-object v1, v0

    check-cast v1, Ljavax/crypto/SecretKey;

    return-object v1

    .line 301
    :cond_0
    new-instance v1, Ljava/security/UnrecoverableKeyException;

    const-string v2, "No secret key found by the given alias."

    invoke-direct {v1, v2}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static blacklist makeAndroidKeyStorePublicKeyFromKeyEntryResponse(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyMetadata;Landroid/security/KeyStoreSecurityLevel;I)Landroid/security/keystore2/AndroidKeyStorePublicKey;
    .locals 11
    .param p0, "descriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .param p1, "metadata"    # Landroid/system/keystore2/KeyMetadata;
    .param p2, "iSecurityLevel"    # Landroid/security/KeyStoreSecurityLevel;
    .param p3, "algorithm"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 218
    iget-object v0, p1, Landroid/system/keystore2/KeyMetadata;->certificate:[B

    if-eqz v0, :cond_4

    .line 222
    iget-object v0, p1, Landroid/system/keystore2/KeyMetadata;->certificate:[B

    .line 224
    .local v0, "x509PublicCert":[B
    invoke-static {v0}, Landroid/security/keystore2/AndroidKeyStoreSpi;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    .line 226
    .local v1, "publicKey":Ljava/security/PublicKey;
    invoke-interface {v1}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 228
    .local v2, "jcaKeyAlgorithm":Ljava/lang/String;
    const-string v3, "EC"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 229
    new-instance v3, Landroid/security/keystore2/AndroidKeyStoreECPublicKey;

    move-object v4, v1

    check-cast v4, Ljava/security/interfaces/ECPublicKey;

    invoke-direct {v3, p0, p1, p2, v4}, Landroid/security/keystore2/AndroidKeyStoreECPublicKey;-><init>(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyMetadata;Landroid/security/KeyStoreSecurityLevel;Ljava/security/interfaces/ECPublicKey;)V

    return-object v3

    .line 231
    :cond_0
    const-string v3, "RSA"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 232
    new-instance v3, Landroid/security/keystore2/AndroidKeyStoreRSAPublicKey;

    move-object v4, v1

    check-cast v4, Ljava/security/interfaces/RSAPublicKey;

    invoke-direct {v3, p0, p1, p2, v4}, Landroid/security/keystore2/AndroidKeyStoreRSAPublicKey;-><init>(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyMetadata;Landroid/security/KeyStoreSecurityLevel;Ljava/security/interfaces/RSAPublicKey;)V

    return-object v3

    .line 234
    :cond_1
    const-string v3, "1.3.101.112"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 235
    invoke-interface {v1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v3

    .line 236
    .local v3, "publicKeyEncoded":[B
    new-instance v10, Landroid/security/keystore2/AndroidKeyStoreEdECPublicKey;

    const-string v7, "1.3.101.112"

    move-object v4, v10

    move-object v5, p0

    move-object v6, p1

    move-object v8, p2

    move-object v9, v3

    invoke-direct/range {v4 .. v9}, Landroid/security/keystore2/AndroidKeyStoreEdECPublicKey;-><init>(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyMetadata;Ljava/lang/String;Landroid/security/KeyStoreSecurityLevel;[B)V

    return-object v10

    .line 238
    .end local v3    # "publicKeyEncoded":[B
    :cond_2
    const-string v3, "XDH"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 239
    new-instance v3, Landroid/security/keystore2/AndroidKeyStoreXDHPublicKey;

    .line 240
    invoke-interface {v1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v9

    const-string v7, "XDH"

    move-object v4, v3

    move-object v5, p0

    move-object v6, p1

    move-object v8, p2

    invoke-direct/range {v4 .. v9}, Landroid/security/keystore2/AndroidKeyStoreXDHPublicKey;-><init>(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyMetadata;Ljava/lang/String;Landroid/security/KeyStoreSecurityLevel;[B)V

    .line 239
    return-object v3

    .line 242
    :cond_3
    new-instance v3, Ljava/security/ProviderException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported Android Keystore public key algorithm: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 219
    .end local v0    # "x509PublicCert":[B
    .end local v1    # "publicKey":Ljava/security/PublicKey;
    .end local v2    # "jcaKeyAlgorithm":Ljava/lang/String;
    :cond_4
    new-instance v0, Ljava/security/UnrecoverableKeyException;

    const-string v1, "Failed to obtain X.509 form of public key. Keystore has no public certificate stored."

    invoke-direct {v0, v1}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist makeAndroidKeyStoreSecretKeyFromKeyEntryResponse(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyEntryResponse;II)Landroid/security/keystore2/AndroidKeyStoreSecretKey;
    .locals 5
    .param p0, "descriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .param p1, "response"    # Landroid/system/keystore2/KeyEntryResponse;
    .param p2, "algorithm"    # I
    .param p3, "digest"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 312
    :try_start_0
    invoke-static {p2, p3}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->fromKeymasterSecretKeyAlgorithm(II)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    .local v0, "keyAlgorithmString":Ljava/lang/String;
    nop

    .line 319
    new-instance v1, Landroid/security/keystore2/AndroidKeyStoreSecretKey;

    iget-object v2, p1, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    new-instance v3, Landroid/security/KeyStoreSecurityLevel;

    iget-object v4, p1, Landroid/system/keystore2/KeyEntryResponse;->iSecurityLevel:Landroid/system/keystore2/IKeystoreSecurityLevel;

    invoke-direct {v3, v4}, Landroid/security/KeyStoreSecurityLevel;-><init>(Landroid/system/keystore2/IKeystoreSecurityLevel;)V

    invoke-direct {v1, p0, v2, v0, v3}, Landroid/security/keystore2/AndroidKeyStoreSecretKey;-><init>(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyMetadata;Ljava/lang/String;Landroid/security/KeyStoreSecurityLevel;)V

    return-object v1

    .line 314
    .end local v0    # "keyAlgorithmString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/security/UnrecoverableKeyException;

    const-string v2, "Unsupported secret key type"

    invoke-direct {v1, v2}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    .line 316
    invoke-virtual {v1, v0}, Ljava/security/UnrecoverableKeyException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/security/UnrecoverableKeyException;

    throw v1
.end method

.method private blacklist putKeyFactoryImpl(Ljava/lang/String;)V
    .locals 2
    .param p1, "algorithm"    # Ljava/lang/String;

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyFactory."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.security.keystore2.AndroidKeyStoreKeyFactorySpi"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore2/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    return-void
.end method

.method private blacklist putSecretKeyFactoryImpl(Ljava/lang/String;)V
    .locals 2
    .param p1, "algorithm"    # Ljava/lang/String;

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecretKeyFactory."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.security.keystore2.AndroidKeyStoreSecretKeyFactorySpi"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore2/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    return-void
.end method
