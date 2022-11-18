.class public abstract Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;
.super Ljavax/crypto/KeyGeneratorSpi;
.source "AndroidKeyStoreKeyGeneratorSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$HmacSHA512;,
        Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$HmacSHA384;,
        Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$HmacSHA256;,
        Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$HmacSHA224;,
        Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$HmacSHA1;,
        Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$HmacBase;,
        Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$DESede;,
        Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$AES;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "AndroidKeyStoreKeyGeneratorSpi"


# instance fields
.field private final blacklist mDefaultKeySizeBits:I

.field protected blacklist mKeySizeBits:I

.field private final blacklist mKeyStore:Landroid/security/KeyStore2;

.field private final blacklist mKeymasterAlgorithm:I

.field private blacklist mKeymasterBlockModes:[I

.field private final blacklist mKeymasterDigest:I

.field private blacklist mKeymasterDigests:[I

.field private blacklist mKeymasterPaddings:[I

.field private blacklist mKeymasterPurposes:[I

.field private blacklist mRng:Ljava/security/SecureRandom;

.field private blacklist mSpec:Landroid/security/keystore/KeyGenParameterSpec;


# direct methods
.method protected constructor blacklist <init>(II)V
    .locals 1
    .param p1, "keymasterAlgorithm"    # I
    .param p2, "defaultKeySizeBits"    # I

    .line 133
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;-><init>(III)V

    .line 134
    return-void
.end method

.method protected constructor blacklist <init>(III)V
    .locals 2
    .param p1, "keymasterAlgorithm"    # I
    .param p2, "keymasterDigest"    # I
    .param p3, "defaultKeySizeBits"    # I

    .line 139
    invoke-direct {p0}, Ljavax/crypto/KeyGeneratorSpi;-><init>()V

    .line 116
    invoke-static {}, Landroid/security/KeyStore2;->getInstance()Landroid/security/KeyStore2;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeyStore:Landroid/security/KeyStore2;

    .line 140
    iput p1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterAlgorithm:I

    .line 141
    iput p2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigest:I

    .line 142
    iput p3, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mDefaultKeySizeBits:I

    .line 143
    if-lez p3, :cond_2

    .line 147
    const/16 v0, 0x80

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Digest algorithm must be specified for HMAC key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_1
    :goto_0
    return-void

    .line 144
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Default key size must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic blacklist lambda$engineGenerateKey$0(Ljava/util/List;Ljava/lang/Integer;)V
    .locals 2
    .param p0, "params"    # Ljava/util/List;
    .param p1, "purpose"    # Ljava/lang/Integer;

    .line 298
    nop

    .line 299
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 298
    const v1, 0x20000001

    invoke-static {v1, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    return-void
.end method

.method static synthetic blacklist lambda$engineGenerateKey$2(Ljava/util/List;Ljava/lang/Integer;)V
    .locals 2
    .param p0, "params"    # Ljava/util/List;
    .param p1, "padding"    # Ljava/lang/Integer;

    .line 316
    nop

    .line 317
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 316
    const v1, 0x20000006

    invoke-static {v1, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    return-void
.end method

.method static synthetic blacklist lambda$engineGenerateKey$3(Ljava/util/List;Ljava/lang/Integer;)V
    .locals 2
    .param p0, "params"    # Ljava/util/List;
    .param p1, "digest"    # Ljava/lang/Integer;

    .line 321
    nop

    .line 322
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 321
    const v1, 0x20000005

    invoke-static {v1, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    return-void
.end method

.method private blacklist resetAll()V
    .locals 2

    .line 274
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 275
    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mRng:Ljava/security/SecureRandom;

    .line 276
    const/4 v1, -0x1

    iput v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeySizeBits:I

    .line 277
    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterPurposes:[I

    .line 278
    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterPaddings:[I

    .line 279
    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterBlockModes:[I

    .line 280
    return-void
.end method


# virtual methods
.method protected whitelist test-api engineGenerateKey()Ljavax/crypto/SecretKey;
    .locals 14

    .line 284
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 285
    .local v0, "spec":Landroid/security/keystore/KeyGenParameterSpec;
    if-eqz v0, :cond_a

    .line 289
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 291
    .local v1, "params":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    const v2, 0x30000003

    iget v3, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeySizeBits:I

    invoke-static {v2, v3}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeInt(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    const v2, 0x10000002

    iget v3, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterAlgorithm:I

    invoke-static {v2, v3}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterPurposes:[I

    new-instance v3, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-static {v2, v3}, Landroid/security/keystore/ArrayUtils;->forEach([ILjava/util/function/Consumer;)V

    .line 302
    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterBlockModes:[I

    new-instance v3, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v1}, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$$ExternalSyntheticLambda1;-><init>(Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;Ljava/util/List;)V

    invoke-static {v2, v3}, Landroid/security/keystore/ArrayUtils;->forEach([ILjava/util/function/Consumer;)V

    .line 315
    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterPaddings:[I

    new-instance v3, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$$ExternalSyntheticLambda2;

    invoke-direct {v3, v1}, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;)V

    invoke-static {v2, v3}, Landroid/security/keystore/ArrayUtils;->forEach([ILjava/util/function/Consumer;)V

    .line 320
    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigests:[I

    new-instance v3, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$$ExternalSyntheticLambda3;

    invoke-direct {v3, v1}, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi$$ExternalSyntheticLambda3;-><init>(Ljava/util/List;)V

    invoke-static {v2, v3}, Landroid/security/keystore/ArrayUtils;->forEach([ILjava/util/function/Consumer;)V

    .line 326
    iget v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterAlgorithm:I

    const/16 v3, 0x80

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigests:[I

    array-length v3, v2

    if-eqz v3, :cond_1

    .line 328
    aget v2, v2, v5

    invoke-static {v2}, Landroid/security/keystore2/KeymasterUtils;->getDigestOutputSizeBits(I)I

    move-result v2

    .line 329
    .local v2, "digestOutputSizeBits":I
    if-eq v2, v4, :cond_0

    .line 334
    const v3, 0x30000008

    invoke-static {v3, v2}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeInt(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 330
    :cond_0
    new-instance v3, Ljava/security/ProviderException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HMAC key authorized for unsupported digest: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigests:[I

    aget v5, v6, v5

    .line 332
    invoke-static {v5}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 339
    .end local v2    # "digestOutputSizeBits":I
    :cond_1
    :goto_0
    invoke-static {v1, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->addUserAuthArgs(Ljava/util/List;Landroid/security/keystore/UserAuthArgs;)V

    .line 341
    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityStart()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 342
    const v2, 0x60000190

    .line 343
    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityStart()Ljava/util/Date;

    move-result-object v3

    .line 342
    invoke-static {v2, v3}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeDate(ILjava/util/Date;)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    :cond_2
    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 347
    const v2, 0x60000191

    .line 349
    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    move-result-object v3

    .line 347
    invoke-static {v2, v3}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeDate(ILjava/util/Date;)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    :cond_3
    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 353
    const v2, 0x60000192

    .line 355
    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    move-result-object v3

    .line 353
    invoke-static {v2, v3}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeDate(ILjava/util/Date;)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    :cond_4
    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5

    .line 360
    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->isRandomizedEncryptionRequired()Z

    move-result v2

    if-nez v2, :cond_5

    .line 362
    const v2, 0x70000007

    invoke-static {v2}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeBool(I)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    :cond_5
    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getMaxUsageCount()I

    move-result v2

    if-eq v2, v4, :cond_6

    .line 368
    const v2, 0x30000195

    .line 370
    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getMaxUsageCount()I

    move-result v3

    .line 368
    invoke-static {v2, v3}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeInt(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    :cond_6
    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mRng:Ljava/security/SecureRandom;

    iget v3, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeySizeBits:I

    add-int/lit8 v3, v3, 0x7

    div-int/lit8 v3, v3, 0x8

    .line 375
    invoke-static {v2, v3}, Landroid/security/keystore2/KeyStoreCryptoOperationUtils;->getRandomBytesToMixIntoKeystoreRng(Ljava/security/SecureRandom;I)[B

    move-result-object v8

    .line 378
    .local v8, "additionalEntropy":[B
    const/4 v2, 0x1

    .line 379
    .local v2, "securityLevel":I
    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->isStrongBoxBacked()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 380
    const/4 v2, 0x2

    move v9, v2

    goto :goto_1

    .line 379
    :cond_7
    move v9, v2

    .line 383
    .end local v2    # "securityLevel":I
    .local v9, "securityLevel":I
    :goto_1
    const/4 v2, 0x0

    .line 384
    .local v2, "flags":I
    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->isCriticalToDeviceEncryption()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 385
    or-int/lit8 v2, v2, 0x1

    move v10, v2

    goto :goto_2

    .line 384
    :cond_8
    move v10, v2

    .line 388
    .end local v2    # "flags":I
    .local v10, "flags":I
    :goto_2
    new-instance v2, Landroid/system/keystore2/KeyDescriptor;

    invoke-direct {v2}, Landroid/system/keystore2/KeyDescriptor;-><init>()V

    move-object v11, v2

    .line 389
    .local v11, "descriptor":Landroid/system/keystore2/KeyDescriptor;
    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    .line 390
    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getNamespace()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v11, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    .line 391
    iget-wide v2, v11, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    const-wide/16 v6, -0x1

    cmp-long v2, v2, v6

    if-nez v2, :cond_9

    .line 392
    goto :goto_3

    .line 393
    :cond_9
    const/4 v5, 0x2

    :goto_3
    iput v5, v11, Landroid/system/keystore2/KeyDescriptor;->domain:I

    .line 394
    const/4 v2, 0x0

    iput-object v2, v11, Landroid/system/keystore2/KeyDescriptor;->blob:[B

    .line 396
    const/4 v12, 0x0

    .line 397
    .local v12, "metadata":Landroid/system/keystore2/KeyMetadata;
    const/4 v2, 0x0

    .line 399
    .local v2, "iSecurityLevel":Landroid/security/KeyStoreSecurityLevel;
    :try_start_0
    iget-object v3, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeyStore:Landroid/security/KeyStore2;

    invoke-virtual {v3, v9}, Landroid/security/KeyStore2;->getSecurityLevel(I)Landroid/security/KeyStoreSecurityLevel;

    move-result-object v3
    :try_end_0
    .catch Landroid/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_3

    move-object v13, v3

    .line 400
    .end local v2    # "iSecurityLevel":Landroid/security/KeyStoreSecurityLevel;
    .local v13, "iSecurityLevel":Landroid/security/KeyStoreSecurityLevel;
    const/4 v4, 0x0

    move-object v2, v13

    move-object v3, v11

    move-object v5, v1

    move v6, v10

    move-object v7, v8

    :try_start_1
    invoke-virtual/range {v2 .. v7}, Landroid/security/KeyStoreSecurityLevel;->generateKey(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;Ljava/util/Collection;I[B)Landroid/system/keystore2/KeyMetadata;

    move-result-object v2
    :try_end_1
    .catch Landroid/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_2

    .line 415
    .end local v12    # "metadata":Landroid/system/keystore2/KeyMetadata;
    .local v2, "metadata":Landroid/system/keystore2/KeyMetadata;
    nop

    .line 418
    :try_start_2
    iget v3, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterAlgorithm:I

    iget v4, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigest:I

    invoke-static {v3, v4}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->fromKeymasterSecretKeyAlgorithm(II)Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    .line 428
    .local v3, "keyAlgorithmJCA":Ljava/lang/String;
    nop

    .line 429
    new-instance v4, Landroid/security/keystore2/AndroidKeyStoreSecretKey;

    invoke-direct {v4, v11, v2, v3, v13}, Landroid/security/keystore2/AndroidKeyStoreSecretKey;-><init>(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyMetadata;Ljava/lang/String;Landroid/security/KeyStoreSecurityLevel;)V

    .line 431
    .local v4, "result":Ljavax/crypto/SecretKey;
    return-object v4

    .line 420
    .end local v3    # "keyAlgorithmJCA":Ljava/lang/String;
    .end local v4    # "result":Ljavax/crypto/SecretKey;
    :catch_0
    move-exception v3

    .line 422
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    :try_start_3
    iget-object v4, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeyStore:Landroid/security/KeyStore2;

    invoke-virtual {v4, v11}, Landroid/security/KeyStore2;->deleteKey(Landroid/system/keystore2/KeyDescriptor;)V
    :try_end_3
    .catch Landroid/security/KeyStoreException; {:try_start_3 .. :try_end_3} :catch_1

    .line 426
    goto :goto_4

    .line 423
    :catch_1
    move-exception v4

    .line 424
    .local v4, "kse":Landroid/security/KeyStoreException;
    const-string v5, "AndroidKeyStoreKeyGeneratorSpi"

    const-string v6, "Failed to delete key after generating successfully but failed to get the algorithm string."

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 427
    .end local v4    # "kse":Landroid/security/KeyStoreException;
    :goto_4
    new-instance v4, Ljava/security/ProviderException;

    const-string v5, "Failed to obtain JCA secret key algorithm name"

    invoke-direct {v4, v5, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 406
    .end local v2    # "metadata":Landroid/system/keystore2/KeyMetadata;
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v12    # "metadata":Landroid/system/keystore2/KeyMetadata;
    :catch_2
    move-exception v2

    goto :goto_5

    .end local v13    # "iSecurityLevel":Landroid/security/KeyStoreSecurityLevel;
    .local v2, "iSecurityLevel":Landroid/security/KeyStoreSecurityLevel;
    :catch_3
    move-exception v3

    move-object v13, v2

    move-object v2, v3

    .line 407
    .local v2, "e":Landroid/security/KeyStoreException;
    .restart local v13    # "iSecurityLevel":Landroid/security/KeyStoreSecurityLevel;
    :goto_5
    invoke-virtual {v2}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 413
    new-instance v3, Ljava/security/ProviderException;

    const-string v4, "Keystore key generation failed"

    invoke-direct {v3, v4, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 411
    :pswitch_0
    new-instance v3, Landroid/security/keystore/StrongBoxUnavailableException;

    const-string v4, "Failed to generate key"

    invoke-direct {v3, v4}, Landroid/security/keystore/StrongBoxUnavailableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 286
    .end local v1    # "params":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .end local v2    # "e":Landroid/security/KeyStoreException;
    .end local v8    # "additionalEntropy":[B
    .end local v9    # "securityLevel":I
    .end local v10    # "flags":I
    .end local v11    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    .end local v12    # "metadata":Landroid/system/keystore2/KeyMetadata;
    .end local v13    # "iSecurityLevel":Landroid/security/KeyStoreSecurityLevel;
    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Not initialized"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch -0x44
        :pswitch_0
    .end packed-switch
.end method

.method protected whitelist test-api engineInit(ILjava/security/SecureRandom;)V
    .locals 3
    .param p1, "keySize"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    .line 161
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot initialize without a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Landroid/security/keystore/KeyGenParameterSpec;

    .line 162
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " parameter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineInit(Ljava/security/SecureRandom;)V
    .locals 3
    .param p1, "random"    # Ljava/security/SecureRandom;

    .line 155
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot initialize without a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Landroid/security/keystore/KeyGenParameterSpec;

    .line 156
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " parameter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 9
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 168
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->resetAll()V

    .line 170
    const/4 v0, 0x0

    .line 172
    .local v0, "success":Z
    if-eqz p1, :cond_f

    :try_start_0
    instance-of v1, p1, Landroid/security/keystore/KeyGenParameterSpec;

    if-eqz v1, :cond_f

    .line 176
    move-object v1, p1

    check-cast v1, Landroid/security/keystore/KeyGenParameterSpec;

    .line 177
    .local v1, "spec":Landroid/security/keystore/KeyGenParameterSpec;
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 181
    iput-object p2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mRng:Ljava/security/SecureRandom;

    .line 182
    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 184
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeySize()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeySize()I

    move-result v2

    goto :goto_0

    :cond_0
    iget v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mDefaultKeySizeBits:I

    :goto_0
    iput v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeySizeBits:I

    .line 185
    if-lez v2, :cond_d

    .line 188
    rem-int/lit8 v2, v2, 0x8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_c

    .line 194
    :try_start_1
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v2

    invoke-static {v2}, Landroid/security/keystore/KeyProperties$Purpose;->allToKeymaster(I)[I

    move-result-object v2

    iput-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterPurposes:[I

    .line 195
    nop

    .line 196
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getEncryptionPaddings()[Ljava/lang/String;

    move-result-object v2

    .line 195
    invoke-static {v2}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v2

    iput-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterPaddings:[I

    .line 197
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getSignaturePaddings()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-gtz v2, :cond_b

    .line 201
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getBlockModes()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/security/keystore/KeyProperties$BlockMode;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v2

    iput-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterBlockModes:[I

    .line 202
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v2

    const/4 v3, 0x1

    and-int/2addr v2, v3

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 203
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->isRandomizedEncryptionRequired()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 204
    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterBlockModes:[I

    array-length v5, v2

    move v6, v4

    :goto_1
    if-ge v6, v5, :cond_2

    aget v7, v2, v6

    .line 205
    .local v7, "keymasterBlockMode":I
    invoke-static {v7}, Landroid/security/keystore2/KeymasterUtils;->isKeymasterBlockModeIndCpaCompatibleWithSymmetricCrypto(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 204
    .end local v7    # "keymasterBlockMode":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 207
    .restart local v7    # "keymasterBlockMode":I
    :cond_1
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Randomized encryption (IND-CPA) required but may be violated by block mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 210
    invoke-static {v7}, Landroid/security/keystore/KeyProperties$BlockMode;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". See "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Landroid/security/keystore/KeyGenParameterSpec;

    .line 211
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " documentation."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .end local v0    # "success":Z
    .end local v1    # "spec":Landroid/security/keystore/KeyGenParameterSpec;
    .end local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;
    .end local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .end local p2    # "random":Ljava/security/SecureRandom;
    throw v2

    .line 216
    .end local v7    # "keymasterBlockMode":I
    .restart local v0    # "success":Z
    .restart local v1    # "spec":Landroid/security/keystore/KeyGenParameterSpec;
    .restart local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;
    .restart local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local p2    # "random":Ljava/security/SecureRandom;
    :cond_2
    iget v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterAlgorithm:I

    const/16 v5, 0x21

    if-ne v2, v5, :cond_4

    .line 217
    iget v5, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeySizeBits:I

    const/16 v6, 0xa8

    if-ne v5, v6, :cond_3

    goto :goto_2

    .line 218
    :cond_3
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string v3, "3DES key size must be 168 bits."

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .end local v0    # "success":Z
    .end local v1    # "spec":Landroid/security/keystore/KeyGenParameterSpec;
    .end local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;
    .end local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .end local p2    # "random":Ljava/security/SecureRandom;
    throw v2

    .line 222
    .restart local v0    # "success":Z
    .restart local v1    # "spec":Landroid/security/keystore/KeyGenParameterSpec;
    .restart local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;
    .restart local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local p2    # "random":Ljava/security/SecureRandom;
    :cond_4
    :goto_2
    const/16 v5, 0x80

    if-ne v2, v5, :cond_7

    .line 223
    iget v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeySizeBits:I

    const/16 v5, 0x40

    if-lt v2, v5, :cond_6

    const/16 v5, 0x200

    if-gt v2, v5, :cond_6

    .line 233
    new-array v2, v3, [I

    iget v5, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigest:I

    aput v5, v2, v4

    iput-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigests:[I

    .line 234
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->isDigestsSpecified()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 237
    nop

    .line 238
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v2

    .line 239
    .local v2, "keymasterDigestsFromSpec":[I
    array-length v5, v2

    if-ne v5, v3, :cond_5

    aget v3, v2, v4

    iget v4, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigest:I

    if-ne v3, v4, :cond_5

    .line 247
    .end local v2    # "keymasterDigestsFromSpec":[I
    goto :goto_3

    .line 241
    .restart local v2    # "keymasterDigestsFromSpec":[I
    :cond_5
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported digests specification: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 243
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Only "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigest:I

    .line 244
    invoke-static {v5}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " supported for this HMAC key algorithm"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .end local v0    # "success":Z
    .end local v1    # "spec":Landroid/security/keystore/KeyGenParameterSpec;
    .end local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;
    .end local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .end local p2    # "random":Ljava/security/SecureRandom;
    throw v3

    .line 224
    .end local v2    # "keymasterDigestsFromSpec":[I
    .restart local v0    # "success":Z
    .restart local v1    # "spec":Landroid/security/keystore/KeyGenParameterSpec;
    .restart local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;
    .restart local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local p2    # "random":Ljava/security/SecureRandom;
    :cond_6
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string v3, "HMAC key sizes must be within 64-512 bits, inclusive."

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .end local v0    # "success":Z
    .end local v1    # "spec":Landroid/security/keystore/KeyGenParameterSpec;
    .end local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;
    .end local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .end local p2    # "random":Ljava/security/SecureRandom;
    throw v2

    .line 250
    .restart local v0    # "success":Z
    .restart local v1    # "spec":Landroid/security/keystore/KeyGenParameterSpec;
    .restart local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;
    .restart local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local p2    # "random":Ljava/security/SecureRandom;
    :cond_7
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->isDigestsSpecified()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 251
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v2

    iput-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigests:[I

    goto :goto_3

    .line 253
    :cond_8
    sget-object v2, Llibcore/util/EmptyArray;->INT:[I

    iput-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigests:[I

    .line 260
    :cond_9
    :goto_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->addUserAuthArgs(Ljava/util/List;Landroid/security/keystore/UserAuthArgs;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 263
    nop

    .line 265
    const/4 v0, 0x1

    .line 267
    .end local v1    # "spec":Landroid/security/keystore/KeyGenParameterSpec;
    if-nez v0, :cond_a

    .line 268
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->resetAll()V

    .line 271
    :cond_a
    return-void

    .line 198
    .restart local v1    # "spec":Landroid/security/keystore/KeyGenParameterSpec;
    :cond_b
    :try_start_2
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string v3, "Signature paddings not supported for symmetric key algorithms"

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .end local v0    # "success":Z
    .end local v1    # "spec":Landroid/security/keystore/KeyGenParameterSpec;
    .end local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;
    .end local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .end local p2    # "random":Ljava/security/SecureRandom;
    throw v2
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 261
    .restart local v0    # "success":Z
    .restart local v1    # "spec":Landroid/security/keystore/KeyGenParameterSpec;
    .restart local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;
    .restart local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local p2    # "random":Ljava/security/SecureRandom;
    :catch_0
    move-exception v2

    .line 262
    .local v2, "e":Ljava/lang/RuntimeException;
    :try_start_3
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    invoke-direct {v3, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "success":Z
    .end local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;
    .end local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .end local p2    # "random":Ljava/security/SecureRandom;
    throw v3

    .line 189
    .end local v2    # "e":Ljava/lang/RuntimeException;
    .restart local v0    # "success":Z
    .restart local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;
    .restart local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local p2    # "random":Ljava/security/SecureRandom;
    :cond_c
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Key size must be a multiple of 8: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeySizeBits:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .end local v0    # "success":Z
    .end local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;
    .end local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .end local p2    # "random":Ljava/security/SecureRandom;
    throw v2

    .line 186
    .restart local v0    # "success":Z
    .restart local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;
    .restart local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local p2    # "random":Ljava/security/SecureRandom;
    :cond_d
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Key size must be positive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeySizeBits:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .end local v0    # "success":Z
    .end local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;
    .end local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .end local p2    # "random":Ljava/security/SecureRandom;
    throw v2

    .line 178
    .restart local v0    # "success":Z
    .restart local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;
    .restart local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local p2    # "random":Ljava/security/SecureRandom;
    :cond_e
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string v3, "KeyStore entry alias not provided"

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .end local v0    # "success":Z
    .end local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;
    .end local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .end local p2    # "random":Ljava/security/SecureRandom;
    throw v2

    .line 173
    .end local v1    # "spec":Landroid/security/keystore/KeyGenParameterSpec;
    .restart local v0    # "success":Z
    .restart local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;
    .restart local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local p2    # "random":Ljava/security/SecureRandom;
    :cond_f
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot initialize without a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Landroid/security/keystore/KeyGenParameterSpec;

    .line 174
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " parameter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .end local v0    # "success":Z
    .end local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;
    .end local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .end local p2    # "random":Ljava/security/SecureRandom;
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 267
    .restart local v0    # "success":Z
    .restart local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;
    .restart local p1    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local p2    # "random":Ljava/security/SecureRandom;
    :catchall_0
    move-exception v1

    if-nez v0, :cond_10

    .line 268
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->resetAll()V

    .line 270
    :cond_10
    throw v1
.end method

.method synthetic blacklist lambda$engineGenerateKey$1$android-security-keystore2-AndroidKeyStoreKeyGeneratorSpi(Ljava/util/List;Ljava/lang/Integer;)V
    .locals 2
    .param p1, "params"    # Ljava/util/List;
    .param p2, "blockMode"    # Ljava/lang/Integer;

    .line 303
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterAlgorithm:I

    if-ne v0, v1, :cond_0

    .line 305
    const v0, 0x30000008

    const/16 v1, 0x60

    invoke-static {v0, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeInt(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    :cond_0
    const v0, 0x20000004

    .line 312
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 311
    invoke-static {v0, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    return-void
.end method
