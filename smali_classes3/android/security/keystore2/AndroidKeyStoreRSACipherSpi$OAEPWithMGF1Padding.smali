.class abstract Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi$OAEPWithMGF1Padding;
.super Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;
.source "AndroidKeyStoreRSACipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "OAEPWithMGF1Padding"
.end annotation


# static fields
.field private static final blacklist MGF_ALGORITGM_MGF1:Ljava/lang/String; = "MGF1"


# instance fields
.field private blacklist mDigestOutputSizeBytes:I

.field private blacklist mKeymasterDigest:I


# direct methods
.method constructor blacklist <init>(I)V
    .locals 1
    .param p1, "keymasterDigest"    # I

    .line 170
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;-><init>(I)V

    .line 166
    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi$OAEPWithMGF1Padding;->mKeymasterDigest:I

    .line 171
    iput p1, p0, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi$OAEPWithMGF1Padding;->mKeymasterDigest:I

    .line 172
    nop

    .line 173
    invoke-static {p1}, Landroid/security/keystore2/KeymasterUtils;->getDigestOutputSizeBits(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi$OAEPWithMGF1Padding;->mDigestOutputSizeBytes:I

    .line 174
    return-void
.end method


# virtual methods
.method protected final blacklist addAlgorithmSpecificParametersToBegin(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/security/keymint/KeyParameter;",
            ">;)V"
        }
    .end annotation

    .line 297
    .local p1, "parameters":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    invoke-super {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;->addAlgorithmSpecificParametersToBegin(Ljava/util/List;)V

    .line 298
    iget v0, p0, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi$OAEPWithMGF1Padding;->mKeymasterDigest:I

    const v1, 0x20000005

    invoke-static {v1, v0}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    return-void
.end method

.method protected final whitelist test-api engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 5

    .line 274
    new-instance v0, Ljavax/crypto/spec/OAEPParameterSpec;

    iget v1, p0, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi$OAEPWithMGF1Padding;->mKeymasterDigest:I

    .line 276
    invoke-static {v1}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/security/spec/MGF1ParameterSpec;->SHA1:Ljava/security/spec/MGF1ParameterSpec;

    sget-object v3, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    const-string v4, "MGF1"

    invoke-direct {v0, v1, v4, v2, v3}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    .line 281
    .local v0, "spec":Ljavax/crypto/spec/OAEPParameterSpec;
    :try_start_0
    const-string v1, "OAEP"

    invoke-static {v1}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v1

    .line 282
    .local v1, "params":Ljava/security/AlgorithmParameters;
    invoke-virtual {v1, v0}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    return-object v1

    .line 287
    .end local v1    # "params":Ljava/security/AlgorithmParameters;
    :catch_0
    move-exception v1

    .line 288
    .local v1, "e":Ljava/security/spec/InvalidParameterSpecException;
    new-instance v2, Ljava/security/ProviderException;

    const-string v3, "Failed to initialize OAEP AlgorithmParameters with an IV"

    invoke-direct {v2, v3, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 284
    .end local v1    # "e":Ljava/security/spec/InvalidParameterSpecException;
    :catch_1
    move-exception v1

    .line 285
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/security/ProviderException;

    const-string v3, "Failed to obtain OAEP AlgorithmParameters"

    invoke-direct {v2, v3, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected final blacklist getAdditionalEntropyAmountForBegin()I
    .locals 1

    .line 311
    const/4 v0, 0x0

    return v0
.end method

.method protected final blacklist getAdditionalEntropyAmountForFinish()I
    .locals 1

    .line 316
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi$OAEPWithMGF1Padding;->isEncrypting()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi$OAEPWithMGF1Padding;->mDigestOutputSizeBytes:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected final blacklist getTransform()Ljava/lang/String;
    .locals 1

    .line 321
    iget v0, p0, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi$OAEPWithMGF1Padding;->mKeymasterDigest:I

    packed-switch v0, :pswitch_data_0

    .line 333
    const-string v0, "RSA/ECB/OAEPPadding"

    return-object v0

    .line 331
    :pswitch_0
    const-string v0, "RSA/ECB/OAEPWithSHA-512AndMGF1Padding"

    return-object v0

    .line 329
    :pswitch_1
    const-string v0, "RSA/ECB/OAEPWithSHA-384AndMGF1Padding"

    return-object v0

    .line 327
    :pswitch_2
    const-string v0, "RSA/ECB/OAEPWithSHA-256AndMGF1Padding"

    return-object v0

    .line 325
    :pswitch_3
    const-string v0, "RSA/ECB/OAEPWithSHA-224AndMGF1Padding"

    return-object v0

    .line 323
    :pswitch_4
    const-string v0, "RSA/ECB/OAEPWithSHA-1AndMGF1Padding"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final blacklist initAlgorithmSpecificParameters()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 177
    return-void
.end method

.method protected final blacklist initAlgorithmSpecificParameters(Ljava/security/AlgorithmParameters;)V
    .locals 4
    .param p1, "params"    # Ljava/security/AlgorithmParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 254
    if-nez p1, :cond_0

    .line 255
    return-void

    .line 260
    :cond_0
    :try_start_0
    const-class v0, Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-virtual {p1, v0}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    check-cast v0, Ljavax/crypto/spec/OAEPParameterSpec;
    :try_end_0
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    .local v0, "spec":Ljavax/crypto/spec/OAEPParameterSpec;
    nop

    .line 265
    if-eqz v0, :cond_1

    .line 269
    invoke-virtual {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi$OAEPWithMGF1Padding;->initAlgorithmSpecificParameters(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 270
    return-void

    .line 266
    :cond_1
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OAEP parameters required, but not provided in parameters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 261
    .end local v0    # "spec":Ljavax/crypto/spec/OAEPParameterSpec;
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Ljava/security/spec/InvalidParameterSpecException;
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OAEP parameters required, but not found in parameters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected final blacklist initAlgorithmSpecificParameters(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 13
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 182
    const-string v0, "Unsupported digest: "

    if-nez p1, :cond_0

    .line 183
    return-void

    .line 186
    :cond_0
    instance-of v1, p1, Ljavax/crypto/spec/OAEPParameterSpec;

    if-eqz v1, :cond_8

    .line 191
    move-object v1, p1

    check-cast v1, Ljavax/crypto/spec/OAEPParameterSpec;

    .line 192
    .local v1, "spec":Ljavax/crypto/spec/OAEPParameterSpec;
    invoke-virtual {v1}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFAlgorithm()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MGF1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v4, " supported"

    const-string v5, ". Only "

    if-eqz v2, :cond_7

    .line 197
    invoke-virtual {v1}, Ljavax/crypto/spec/OAEPParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, "jcaDigest":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Landroid/security/keystore/KeyProperties$Digest;->toKeymaster(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    .local v3, "keymasterDigest":I
    nop

    .line 205
    packed-switch v3, :pswitch_data_0

    .line 214
    new-instance v4, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 212
    :pswitch_0
    nop

    .line 217
    invoke-virtual {v1}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    .line 218
    .local v0, "mgfParams":Ljava/security/spec/AlgorithmParameterSpec;
    if-eqz v0, :cond_6

    .line 222
    instance-of v6, v0, Ljava/security/spec/MGF1ParameterSpec;

    if-eqz v6, :cond_5

    .line 226
    move-object v6, v0

    check-cast v6, Ljava/security/spec/MGF1ParameterSpec;

    .line 227
    .local v6, "mgfSpec":Ljava/security/spec/MGF1ParameterSpec;
    invoke-virtual {v6}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v7

    .line 228
    .local v7, "mgf1JcaDigest":Ljava/lang/String;
    const-string v8, "SHA-1"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 233
    invoke-virtual {v1}, Ljavax/crypto/spec/OAEPParameterSpec;->getPSource()Ljavax/crypto/spec/PSource;

    move-result-object v4

    .line 234
    .local v4, "pSource":Ljavax/crypto/spec/PSource;
    instance-of v5, v4, Ljavax/crypto/spec/PSource$PSpecified;

    const-string v8, ". Only pSpecifiedEmpty (PSource.PSpecified.DEFAULT) supported"

    const-string v9, "Unsupported source of encoding input P: "

    if-eqz v5, :cond_3

    .line 239
    move-object v5, v4

    check-cast v5, Ljavax/crypto/spec/PSource$PSpecified;

    .line 240
    .local v5, "pSourceSpecified":Ljavax/crypto/spec/PSource$PSpecified;
    invoke-virtual {v5}, Ljavax/crypto/spec/PSource$PSpecified;->getValue()[B

    move-result-object v10

    .line 241
    .local v10, "pSourceValue":[B
    if-eqz v10, :cond_2

    array-length v11, v10

    if-gtz v11, :cond_1

    goto :goto_0

    .line 242
    :cond_1
    new-instance v11, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v11, v8}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 246
    :cond_2
    :goto_0
    iput v3, p0, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi$OAEPWithMGF1Padding;->mKeymasterDigest:I

    .line 247
    nop

    .line 248
    invoke-static {v3}, Landroid/security/keystore2/KeymasterUtils;->getDigestOutputSizeBits(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x7

    div-int/lit8 v8, v8, 0x8

    iput v8, p0, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi$OAEPWithMGF1Padding;->mDigestOutputSizeBytes:I

    .line 249
    return-void

    .line 235
    .end local v5    # "pSourceSpecified":Ljavax/crypto/spec/PSource$PSpecified;
    .end local v10    # "pSourceValue":[B
    :cond_3
    new-instance v5, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 229
    .end local v4    # "pSource":Ljavax/crypto/spec/PSource;
    :cond_4
    new-instance v9, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unsupported MGF1 digest: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v9, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 223
    .end local v6    # "mgfSpec":Ljava/security/spec/MGF1ParameterSpec;
    .end local v7    # "mgf1JcaDigest":Ljava/lang/String;
    :cond_5
    new-instance v4, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported MGF parameters: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Only MGF1ParameterSpec supported"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 219
    :cond_6
    new-instance v4, Ljava/security/InvalidAlgorithmParameterException;

    const-string v5, "MGF parameters must be provided"

    invoke-direct {v4, v5}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 201
    .end local v0    # "mgfParams":Ljava/security/spec/AlgorithmParameterSpec;
    .end local v3    # "keymasterDigest":I
    :catch_0
    move-exception v3

    .line 202
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 193
    .end local v2    # "jcaDigest":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :cond_7
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported MGF: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 194
    invoke-virtual {v1}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFAlgorithm()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    .end local v1    # "spec":Ljavax/crypto/spec/OAEPParameterSpec;
    :cond_8
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported parameter spec: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Only OAEPParameterSpec supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected final blacklist loadAlgorithmSpecificParametersFromBeginResult([Landroid/hardware/security/keymint/KeyParameter;)V
    .locals 0
    .param p1, "parameters"    # [Landroid/hardware/security/keymint/KeyParameter;

    .line 306
    invoke-super {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreRSACipherSpi;->loadAlgorithmSpecificParametersFromBeginResult([Landroid/hardware/security/keymint/KeyParameter;)V

    .line 307
    return-void
.end method
