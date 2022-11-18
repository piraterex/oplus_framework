.class public Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;
.super Ljavax/crypto/KeyAgreementSpi;
.source "AndroidKeyStoreKeyAgreementSpi.java"

# interfaces
.implements Landroid/security/keystore/KeyStoreCryptoOperation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi$XDH;,
        Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi$ECDH;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "AndroidKeyStoreKeyAgreementSpi"


# instance fields
.field private blacklist mKey:Landroid/security/keystore2/AndroidKeyStorePrivateKey;

.field private final blacklist mKeymintAlgorithm:I

.field private blacklist mOperation:Landroid/security/KeyStoreOperation;

.field private blacklist mOperationHandle:J

.field private blacklist mOtherPartyKey:Ljava/security/PublicKey;


# direct methods
.method protected constructor blacklist <init>(I)V
    .locals 0
    .param p1, "keymintAlgorithm"    # I

    .line 85
    invoke-direct {p0}, Ljavax/crypto/KeyAgreementSpi;-><init>()V

    .line 86
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->resetAll()V

    .line 88
    iput p1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mKeymintAlgorithm:I

    .line 89
    return-void
.end method

.method private blacklist ensureKeystoreOperationInitialized()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 219
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mKey:Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    if-eqz v0, :cond_2

    .line 222
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mOperation:Landroid/security/KeyStoreOperation;

    if-eqz v0, :cond_0

    .line 223
    return-void

    .line 228
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v0, "parameters":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    const v1, 0x20000001

    const/4 v2, 0x6

    invoke-static {v1, v2}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    :try_start_0
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mKey:Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    .line 235
    invoke-virtual {v1}, Landroid/security/keystore2/AndroidKeyStorePrivateKey;->getSecurityLevel()Landroid/security/KeyStoreSecurityLevel;

    move-result-object v1

    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mKey:Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    invoke-virtual {v2}, Landroid/security/keystore2/AndroidKeyStorePrivateKey;->getKeyIdDescriptor()Landroid/system/keystore2/KeyDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/security/KeyStoreSecurityLevel;->createOperation(Landroid/system/keystore2/KeyDescriptor;Ljava/util/Collection;)Landroid/security/KeyStoreOperation;

    move-result-object v1

    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mOperation:Landroid/security/KeyStoreOperation;
    :try_end_0
    .catch Landroid/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    goto :goto_0

    .line 236
    :catch_0
    move-exception v1

    .line 238
    .local v1, "keyStoreException":Landroid/security/KeyStoreException;
    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mKey:Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    .line 239
    invoke-static {v2, v1}, Landroid/security/keystore2/KeyStoreCryptoOperationUtils;->getInvalidKeyException(Landroid/security/keystore2/AndroidKeyStoreKey;Landroid/security/KeyStoreException;)Ljava/security/InvalidKeyException;

    move-result-object v2

    .line 240
    .local v2, "e":Ljava/security/InvalidKeyException;
    if-nez v2, :cond_1

    .line 248
    .end local v1    # "keyStoreException":Landroid/security/KeyStoreException;
    .end local v2    # "e":Ljava/security/InvalidKeyException;
    :goto_0
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mOperation:Landroid/security/KeyStoreOperation;

    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mKey:Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    .line 249
    invoke-static {v1, v2}, Landroid/security/keystore2/KeyStoreCryptoOperationUtils;->getOrMakeOperationChallenge(Landroid/security/KeyStoreOperation;Landroid/security/keystore2/AndroidKeyStoreKey;)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mOperationHandle:J

    .line 250
    return-void

    .line 241
    .restart local v1    # "keyStoreException":Landroid/security/KeyStoreException;
    .restart local v2    # "e":Ljava/security/InvalidKeyException;
    :cond_1
    throw v2

    .line 220
    .end local v0    # "parameters":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .end local v1    # "keyStoreException":Landroid/security/KeyStoreException;
    .end local v2    # "e":Ljava/security/InvalidKeyException;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist resetAll()V
    .locals 1

    .line 213
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->resetWhilePreservingInitState()V

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mKey:Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    .line 215
    return-void
.end method

.method private blacklist resetWhilePreservingInitState()V
    .locals 2

    .line 206
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mOperation:Landroid/security/KeyStoreOperation;

    invoke-static {v0}, Landroid/security/keystore2/KeyStoreCryptoOperationUtils;->abortOperation(Landroid/security/KeyStoreOperation;)V

    .line 207
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mOperationHandle:J

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mOperation:Landroid/security/KeyStoreOperation;

    .line 209
    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mOtherPartyKey:Ljava/security/PublicKey;

    .line 210
    return-void
.end method


# virtual methods
.method protected whitelist test-api engineDoPhase(Ljava/security/Key;Z)Ljava/security/Key;
    .locals 3
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "lastPhase"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 129
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->ensureKeystoreOperationInitialized()V

    .line 131
    if-eqz p1, :cond_3

    .line 133
    instance-of v0, p1, Ljava/security/PublicKey;

    if-eqz v0, :cond_2

    .line 135
    if-eqz p2, :cond_1

    .line 138
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mOtherPartyKey:Ljava/security/PublicKey;

    if-nez v0, :cond_0

    .line 144
    move-object v0, p1

    check-cast v0, Ljava/security/PublicKey;

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mOtherPartyKey:Ljava/security/PublicKey;

    .line 146
    const/4 v0, 0x0

    return-object v0

    .line 139
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only one other party supported. doPhase() must only be called exactly once."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only one other party supported. lastPhase must be set to true."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_2
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only public keys supported. Key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_3
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "key == null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineGenerateSecret([BI)I
    .locals 4
    .param p1, "sharedSecret"    # [B
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .line 182
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->engineGenerateSecret()[B

    move-result-object v0

    .line 184
    .local v0, "generatedSecret":[B
    array-length v1, v0

    array-length v2, p1

    sub-int/2addr v2, p2

    if-gt v1, v2, :cond_0

    .line 187
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    array-length v1, v0

    return v1

    .line 185
    :cond_0
    new-instance v1, Ljavax/crypto/ShortBufferException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Needed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected whitelist test-api engineGenerateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 2
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 174
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->engineGenerateSecret()[B

    move-result-object v0

    .line 176
    .local v0, "generatedSecret":[B
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v1, v0, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method protected whitelist test-api engineGenerateSecret()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 152
    :try_start_0
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->ensureKeystoreOperationInitialized()V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    .line 155
    nop

    .line 157
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mOtherPartyKey:Ljava/security/PublicKey;

    if-eqz v0, :cond_0

    .line 160
    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    .line 163
    .local v0, "otherPartyKeyEncoded":[B
    :try_start_1
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mOperation:Landroid/security/KeyStoreOperation;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/security/KeyStoreOperation;->finish([B[B)[B

    move-result-object v1
    :try_end_1
    .catch Landroid/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->resetWhilePreservingInitState()V

    .line 163
    return-object v1

    .line 167
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 164
    :catch_0
    move-exception v1

    .line 165
    .local v1, "e":Landroid/security/KeyStoreException;
    :try_start_2
    new-instance v2, Ljava/security/ProviderException;

    const-string v3, "Keystore operation failed"

    invoke-direct {v2, v3, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "otherPartyKeyEncoded":[B
    .end local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 167
    .end local v1    # "e":Landroid/security/KeyStoreException;
    .restart local v0    # "otherPartyKeyEncoded":[B
    .restart local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;
    :goto_0
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->resetWhilePreservingInitState()V

    .line 168
    throw v1

    .line 158
    .end local v0    # "otherPartyKeyEncoded":[B
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Other party key not provided. Call doPhase() first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :catch_1
    move-exception v0

    .line 154
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Not initialized"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected whitelist test-api engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V
    .locals 3
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 93
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->resetAll()V

    .line 95
    if-eqz p1, :cond_3

    .line 97
    instance-of v0, p1, Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    if-eqz v0, :cond_2

    .line 103
    move-object v0, p1

    check-cast v0, Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mKey:Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    .line 105
    const/4 v0, 0x0

    .line 107
    .local v0, "success":Z
    :try_start_0
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->ensureKeystoreOperationInitialized()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    const/4 v0, 0x1

    .line 110
    if-nez v0, :cond_0

    .line 111
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->resetAll()V

    .line 114
    :cond_0
    return-void

    .line 110
    :catchall_0
    move-exception v1

    if-nez v0, :cond_1

    .line 111
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->resetAll()V

    .line 113
    :cond_1
    throw v1

    .line 98
    .end local v0    # "success":Z
    :cond_2
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only Android KeyStore private keys supported. Key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_3
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "key == null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 3
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 119
    if-nez p2, :cond_0

    .line 123
    invoke-virtual {p0, p1, p3}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V

    .line 124
    return-void

    .line 120
    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported algorithm parameters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 199
    :try_start_0
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->resetAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 202
    nop

    .line 203
    return-void

    .line 201
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 202
    throw v0
.end method

.method public blacklist getOperationHandle()J
    .locals 2

    .line 193
    iget-wide v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyAgreementSpi;->mOperationHandle:J

    return-wide v0
.end method
