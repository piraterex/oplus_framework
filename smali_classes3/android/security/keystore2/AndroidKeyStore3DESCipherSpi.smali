.class public abstract Landroid/security/keystore2/AndroidKeyStore3DESCipherSpi;
.super Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;
.source "AndroidKeyStore3DESCipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore2/AndroidKeyStore3DESCipherSpi$CBC;,
        Landroid/security/keystore2/AndroidKeyStore3DESCipherSpi$ECB;
    }
.end annotation


# static fields
.field private static final blacklist BLOCK_SIZE_BYTES:I = 0x8


# instance fields
.field private blacklist mIv:[B

.field private blacklist mIvHasBeenUsed:Z

.field private final blacklist mIvRequired:Z

.field private final blacklist mKeymasterBlockMode:I

.field private final blacklist mKeymasterPadding:I


# direct methods
.method constructor blacklist <init>(IIZ)V
    .locals 0
    .param p1, "keymasterBlockMode"    # I
    .param p2, "keymasterPadding"    # I
    .param p3, "ivRequired"    # Z

    .line 61
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;-><init>()V

    .line 62
    iput p1, p0, Landroid/security/keystore2/AndroidKeyStore3DESCipherSpi;->mKeymasterBlockMode:I

    .line 63
    iput p2, p0, Landroid/security/keystore2/AndroidKeyStore3DESCipherSpi;->mKeymasterPadding:I

    .line 64
    iput-boolean p3, p0, Landroid/security/keystore2/AndroidKeyStore3DESCipherSpi;->mIvRequired:Z

    .line 65
    return-void
.end method


# virtual methods
.method protected blacklist addAlgorithmSpecificParametersToBegin(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/security/keymint/KeyParameter;",
            ">;)V"
        }
    .end annotation

    .line 277
    .local p1, "parameters":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStore3DESCipherSpi;->isEncrypting()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStore3DESCipherSpi;->mIvRequired:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStore3DESCipherSpi;->mIvHasBeenUsed:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 279
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IV has already been used. Reusing IV in encryption mode violates security best practices."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_1
    :goto_0
    const v0, 0x10000002

    const/16 v1, 0x21

    invoke-static {v0, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    const v0, 0x20000004

    iget v1, p0, Landroid/security/keystore2/AndroidKeyStore3DESCipherSpi;->mKeymasterBlockMode:I

    invoke-static {v0, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    const v0, 0x20000006

    iget v1, p0, Landroid/security/keystore2/AndroidKeyStore3DESCipherSpi;->mKeymasterPadding:I

    invoke-static {v0, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    iget-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStore3DESCipherSpi;->mIvRequired:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStore3DESCipherSpi;->mIv:[B

    if-eqz v0, :cond_2

    .line 298
    const v1, -0x6ffffc17

    invoke-static {v1, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    :cond_2
    return-void
.end method

.method protected whitelist test-api engineGetBlockSize()I
    .locals 1

    .line 140
    const/16 v0, 0x8

    return v0
.end method

.method protected final whitelist test-api engineGetIV()[B
    .locals 1

    .line 150
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStore3DESCipherSpi;->mIv:[B

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([B)[B

    move-result-object v0

    return-object v0
.end method

.method protected whitelist test-api engineGetOutputSize(I)I
    .locals 1
    .param p1, "inputLen"    # I

    .line 145
    add-int/lit8 v0, p1, 0x18

    return v0
.end method

.method protected whitelist test-api engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 3

    .line 155
    iget-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStore3DESCipherSpi;->mIvRequired:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 156
    return-object v1

    .line 158
    :cond_0
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStore3DESCipherSpi;->mIv:[B

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    .line 160
    :try_start_0
    const-string v0, "DESede"

    invoke-static {v0}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    .line 161
    .local v0, "params":Ljava/security/AlgorithmParameters;
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStore3DESCipherSpi;->mIv:[B

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    return-object v0

    .line 166
    .end local v0    # "params":Ljava/security/AlgorithmParameters;
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/security/spec/InvalidParameterSpecException;
    new-instance v1, Ljava/security/ProviderException;

    const-string v2, "Failed to initialize 3DES AlgorithmParameters with an IV"

    invoke-direct {v1, v2, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 163
    .end local v0    # "e":Ljava/security/spec/InvalidParameterSpecException;
    :catch_1
    move-exception v0

    .line 164
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/security/ProviderException;

    const-string v2, "Failed to obtain 3DES AlgorithmParameters"

    invoke-direct {v1, v2, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 172
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_1
    return-object v1
.end method

.method public bridge synthetic whitelist test-api finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 44
    invoke-super {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->finalize()V

    return-void
.end method

.method protected final blacklist getAdditionalEntropyAmountForBegin()I
    .locals 1

    .line 262
    iget-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStore3DESCipherSpi;->mIvRequired:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStore3DESCipherSpi;->mIv:[B

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStore3DESCipherSpi;->isEncrypting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    const/16 v0, 0x8

    return v0

    .line 267
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist getAdditionalEntropyAmountForFinish()I
    .locals 1

    .line 272
    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist initAlgorithmSpecificParameters()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 177
    iget-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStore3DESCipherSpi;->mIvRequired:Z

    if-nez v0, :cond_0

    .line 178
    return-void

    .line 182
    :cond_0
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStore3DESCipherSpi;->isEncrypting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    return-void

    .line 183
    :cond_1
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "IV required when decrypting. Use IvParameterSpec or AlgorithmParameters to provide it."

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist initAlgorithmSpecificParameters(Ljava/security/AlgorithmParameters;)V
    .locals 4
    .param p1, "params"    # Ljava/security/AlgorithmParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 219
    iget-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStore3DESCipherSpi;->mIvRequired:Z

    if-nez v0, :cond_1

    .line 220
    if-nez p1, :cond_0

    .line 223
    return-void

    .line 221
    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported parameters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_1
    if-nez p1, :cond_3

    .line 228
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStore3DESCipherSpi;->isEncrypting()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 233
    return-void

    .line 230
    :cond_2
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "IV required when decrypting. Use IvParameterSpec or AlgorithmParameters to provide it."

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_3
    invoke-virtual {p1}, Ljava/security/AlgorithmParameters;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DESede"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 244
    :try_start_0
    const-class v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p1, v0}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    check-cast v0, Ljavax/crypto/spec/IvParameterSpec;
    :try_end_0
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    .local v0, "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    nop

    .line 254
    invoke-virtual {v0}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v1

    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStore3DESCipherSpi;->mIv:[B

    .line 255
    if-eqz v1, :cond_4

    .line 258
    return-void

    .line 256
    :cond_4
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "Null IV in AlgorithmParameters"

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 245
    .end local v0    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Ljava/security/spec/InvalidParameterSpecException;
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStore3DESCipherSpi;->isEncrypting()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 251
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStore3DESCipherSpi;->mIv:[B

    .line 252
    return-void

    .line 248
    :cond_5
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IV required when decrypting, but not found in parameters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 237
    .end local v0    # "e":Ljava/security/spec/InvalidParameterSpecException;
    :cond_6
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported AlgorithmParameters algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 238
    invoke-virtual {p1}, Ljava/security/AlgorithmParameters;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Supported: DESede"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist initAlgorithmSpecificParameters(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 3
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 191
    iget-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStore3DESCipherSpi;->mIvRequired:Z

    if-nez v0, :cond_1

    .line 192
    if-nez p1, :cond_0

    .line 195
    return-void

    .line 193
    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported parameters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_1
    if-nez p1, :cond_3

    .line 200
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStore3DESCipherSpi;->isEncrypting()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 205
    return-void

    .line 202
    :cond_2
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "IvParameterSpec must be provided when decrypting"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_3
    instance-of v0, p1, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v0, :cond_5

    .line 210
    move-object v0, p1

    check-cast v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStore3DESCipherSpi;->mIv:[B

    .line 211
    if-eqz v0, :cond_4

    .line 214
    return-void

    .line 212
    :cond_4
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Null IV in IvParameterSpec"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_5
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Only IvParameterSpec supported"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist initKey(ILjava/security/Key;)V
    .locals 4
    .param p1, "i"    # I
    .param p2, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 126
    instance-of v0, p2, Landroid/security/keystore2/AndroidKeyStoreSecretKey;

    if-nez v0, :cond_1

    .line 127
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 128
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "null"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_1
    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DESede"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 135
    move-object v0, p2

    check-cast v0, Landroid/security/keystore2/AndroidKeyStoreSecretKey;

    invoke-virtual {p0, v0}, Landroid/security/keystore2/AndroidKeyStore3DESCipherSpi;->setKey(Landroid/security/keystore2/AndroidKeyStoreKey;)V

    .line 136
    return-void

    .line 131
    :cond_2
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported key algorithm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 132
    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Only "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist loadAlgorithmSpecificParametersFromBeginResult([Landroid/hardware/security/keymint/KeyParameter;)V
    .locals 6
    .param p1, "parameters"    # [Landroid/hardware/security/keymint/KeyParameter;

    .line 305
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStore3DESCipherSpi;->mIvHasBeenUsed:Z

    .line 308
    const/4 v0, 0x0

    .line 309
    .local v0, "returnedIv":[B
    if-eqz p1, :cond_1

    .line 310
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 311
    .local v3, "p":Landroid/hardware/security/keymint/KeyParameter;
    iget v4, v3, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    const v5, -0x6ffffc17

    if-ne v4, v5, :cond_0

    .line 312
    iget-object v1, v3, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v1}, Landroid/hardware/security/keymint/KeyParameterValue;->getBlob()[B

    move-result-object v0

    .line 313
    goto :goto_1

    .line 310
    .end local v3    # "p":Landroid/hardware/security/keymint/KeyParameter;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 318
    :cond_1
    :goto_1
    iget-boolean v1, p0, Landroid/security/keystore2/AndroidKeyStore3DESCipherSpi;->mIvRequired:Z

    if-eqz v1, :cond_4

    .line 319
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStore3DESCipherSpi;->mIv:[B

    if-nez v1, :cond_2

    .line 320
    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStore3DESCipherSpi;->mIv:[B

    goto :goto_2

    .line 321
    :cond_2
    if-eqz v0, :cond_5

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    .line 322
    :cond_3
    new-instance v1, Ljava/security/ProviderException;

    const-string v2, "IV in use differs from provided IV"

    invoke-direct {v1, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 325
    :cond_4
    if-nez v0, :cond_6

    .line 330
    :cond_5
    :goto_2
    return-void

    .line 326
    :cond_6
    new-instance v1, Ljava/security/ProviderException;

    const-string v2, "IV in use despite IV not being used by this transformation"

    invoke-direct {v1, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected final blacklist resetAll()V
    .locals 1

    .line 334
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStore3DESCipherSpi;->mIv:[B

    .line 335
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStore3DESCipherSpi;->mIvHasBeenUsed:Z

    .line 336
    invoke-super {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->resetAll()V

    .line 337
    return-void
.end method
