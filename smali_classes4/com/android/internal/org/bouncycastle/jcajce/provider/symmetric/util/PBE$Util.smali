.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;
.super Ljava/lang/Object;
.source "PBE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Util"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist convertPassword(ILjavax/crypto/spec/PBEKeySpec;)[B
    .locals 1
    .param p0, "type"    # I
    .param p1, "keySpec"    # Ljavax/crypto/spec/PBEKeySpec;

    .line 532
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 534
    invoke-virtual {p1}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS12PasswordToBytes([C)[B

    move-result-object v0

    .local v0, "key":[B
    goto :goto_1

    .line 536
    .end local v0    # "key":[B
    :cond_0
    const/4 v0, 0x5

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    goto :goto_0

    .line 542
    :cond_1
    invoke-virtual {p1}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToBytes([C)[B

    move-result-object v0

    .restart local v0    # "key":[B
    goto :goto_1

    .line 538
    .end local v0    # "key":[B
    :cond_2
    :goto_0
    invoke-virtual {p1}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToUTF8Bytes([C)[B

    move-result-object v0

    .line 544
    .restart local v0    # "key":[B
    :goto_1
    return-object v0
.end method

.method public static blacklist getParameterSpecFromPBEParameterSpec(Ljavax/crypto/spec/PBEParameterSpec;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 4
    .param p0, "pbeParameterSpec"    # Ljavax/crypto/spec/PBEParameterSpec;

    .line 517
    :try_start_0
    const-class v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBE;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string/jumbo v1, "javax.crypto.spec.PBEParameterSpec"

    .line 518
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getParameterSpec"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 519
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 520
    .local v0, "getParameterSpecMethod":Ljava/lang/reflect/Method;
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/spec/AlgorithmParameterSpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 521
    .end local v0    # "getParameterSpecMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 522
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist makePBEGenerator(II)Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    .locals 2
    .param p0, "type"    # I
    .param p1, "hash"    # I

    .line 82
    if-eqz p0, :cond_4

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    goto/16 :goto_1

    .line 104
    :cond_0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x5

    if-ne p0, v0, :cond_1

    goto :goto_0

    .line 179
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 181
    packed-switch p1, :pswitch_data_0

    .line 232
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "unknown digest scheme for PBE encryption."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :pswitch_1
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA512()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    .line 230
    .local v0, "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    goto/16 :goto_2

    .line 224
    .end local v0    # "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_2
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA384()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    .line 225
    .restart local v0    # "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    goto/16 :goto_2

    .line 219
    .end local v0    # "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_3
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA224()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    .line 220
    .restart local v0    # "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    goto/16 :goto_2

    .line 210
    .end local v0    # "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_4
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA256()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    .line 211
    .restart local v0    # "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    goto/16 :goto_2

    .line 195
    .end local v0    # "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_5
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    .line 196
    .restart local v0    # "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    goto/16 :goto_2

    .line 190
    .end local v0    # "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_6
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getMD5()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    .line 191
    .restart local v0    # "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_2

    .line 237
    .end local v0    # "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    :cond_2
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;-><init>()V

    .restart local v0    # "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_2

    .line 106
    .end local v0    # "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    :cond_3
    :goto_0
    packed-switch p1, :pswitch_data_1

    .line 176
    :pswitch_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "unknown digest scheme for PBE PKCS5S2 encryption."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :pswitch_8
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA512()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    .line 155
    .restart local v0    # "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_2

    .line 149
    .end local v0    # "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_9
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA384()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    .line 150
    .restart local v0    # "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_2

    .line 144
    .end local v0    # "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_a
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA224()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    .line 145
    .restart local v0    # "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_2

    .line 135
    .end local v0    # "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_b
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA256()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    .line 136
    .restart local v0    # "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_2

    .line 120
    .end local v0    # "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_c
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    .line 121
    .restart local v0    # "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_2

    .line 115
    .end local v0    # "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_d
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getMD5()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    .line 116
    .restart local v0    # "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_2

    .line 84
    .end local v0    # "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    :cond_4
    :goto_1
    packed-switch p1, :pswitch_data_2

    .line 101
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PKCS5 scheme 1 only supports MD2, MD5 and SHA1."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :pswitch_e
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;

    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    .line 99
    .restart local v0    # "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_2

    .line 93
    .end local v0    # "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_f
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;

    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getMD5()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    .line 94
    .restart local v0    # "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    nop

    .line 240
    :goto_2
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_7
        :pswitch_7
        :pswitch_b
        :pswitch_7
        :pswitch_7
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
    .end packed-switch
.end method

.method public static blacklist makePBEMacParameters(Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .locals 5
    .param p0, "pbeKey"    # Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    .param p1, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;

    .line 395
    if-eqz p1, :cond_0

    instance-of v0, p1, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v0, :cond_0

    .line 400
    move-object v0, p1

    check-cast v0, Ljavax/crypto/spec/PBEParameterSpec;

    .line 401
    .local v0, "pbeParam":Ljavax/crypto/spec/PBEParameterSpec;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getType()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getDigest()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;

    move-result-object v1

    .line 402
    .local v1, "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getEncoded()[B

    move-result-object v2

    .line 405
    .local v2, "key":[B
    invoke-virtual {v0}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v3

    invoke-virtual {v0}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 407
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getKeySize()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedMacParameters(I)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    .line 409
    .local v3, "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    return-object v3

    .line 397
    .end local v0    # "pbeParam":Ljavax/crypto/spec/PBEParameterSpec;
    .end local v1    # "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    .end local v2    # "key":[B
    .end local v3    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Need a PBEParameter spec with a PBE key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist makePBEMacParameters(Ljavax/crypto/SecretKey;IIILjavax/crypto/spec/PBEParameterSpec;)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .locals 5
    .param p0, "key"    # Ljavax/crypto/SecretKey;
    .param p1, "type"    # I
    .param p2, "hash"    # I
    .param p3, "keySize"    # I
    .param p4, "pbeSpec"    # Ljavax/crypto/spec/PBEParameterSpec;

    .line 489
    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;

    move-result-object v0

    .line 492
    .local v0, "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    .line 494
    .local v1, "keyBytes":[B
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    invoke-virtual {p4}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v3

    invoke-virtual {p4}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 496
    invoke-virtual {v0, p3}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedMacParameters(I)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    .line 498
    .local v2, "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-eq v3, v4, :cond_0

    .line 500
    const/4 v4, 0x0

    aput-byte v4, v1, v3

    .line 498
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 503
    .end local v3    # "i":I
    :cond_0
    return-object v2
.end method

.method public static blacklist makePBEMacParameters(Ljavax/crypto/spec/PBEKeySpec;III)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .locals 5
    .param p0, "keySpec"    # Ljavax/crypto/spec/PBEKeySpec;
    .param p1, "type"    # I
    .param p2, "hash"    # I
    .param p3, "keySize"    # I

    .line 423
    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;

    move-result-object v0

    .line 427
    .local v0, "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    invoke-static {p1, p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->convertPassword(ILjavax/crypto/spec/PBEKeySpec;)[B

    move-result-object v1

    .line 429
    .local v1, "key":[B
    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v2

    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 431
    invoke-virtual {v0, p3}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedMacParameters(I)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    .line 433
    .local v2, "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-eq v3, v4, :cond_0

    .line 435
    const/4 v4, 0x0

    aput-byte v4, v1, v3

    .line 433
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 438
    .end local v3    # "i":I
    :cond_0
    return-object v2
.end method

.method public static blacklist makePBEParameters(Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .locals 10
    .param p0, "pbeKey"    # Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
    .param p1, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "targetAlgorithm"    # Ljava/lang/String;

    .line 326
    if-eqz p1, :cond_6

    instance-of v0, p1, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v0, :cond_6

    .line 331
    move-object v0, p1

    check-cast v0, Ljavax/crypto/spec/PBEParameterSpec;

    .line 332
    .local v0, "pbeParam":Ljavax/crypto/spec/PBEParameterSpec;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getType()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getDigest()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;

    move-result-object v1

    .line 333
    .local v1, "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getEncoded()[B

    move-result-object v2

    .line 336
    .local v2, "key":[B
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->shouldTryWrongPKCS12()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 338
    const/4 v3, 0x2

    new-array v2, v3, [B

    .line 341
    :cond_0
    invoke-virtual {v0}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v3

    invoke-virtual {v0}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 343
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getIvSize()I

    move-result v3

    if-eqz v3, :cond_3

    .line 345
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getKeySize()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getIvSize()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(II)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    .line 349
    .local v3, "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    nop

    .line 350
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->getParameterSpecFromPBEParameterSpec(Ljavax/crypto/spec/PBEParameterSpec;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v4

    .line 351
    .local v4, "parameterSpecFromPBEParameterSpec":Ljava/security/spec/AlgorithmParameterSpec;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getType()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getType()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_2

    :cond_1
    instance-of v5, v4, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v5, :cond_2

    .line 353
    move-object v5, v3

    check-cast v5, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 354
    .local v5, "parametersWithIV":Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;
    move-object v6, v4

    check-cast v6, Ljavax/crypto/spec/IvParameterSpec;

    .line 356
    .local v6, "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    new-instance v7, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 357
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v8

    check-cast v8, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    .line 358
    invoke-virtual {v6}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;[B)V

    move-object v3, v7

    .line 361
    .end local v4    # "parameterSpecFromPBEParameterSpec":Ljava/security/spec/AlgorithmParameterSpec;
    .end local v5    # "parametersWithIV":Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;
    .end local v6    # "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    :cond_2
    goto :goto_0

    .line 364
    .end local v3    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getKeySize()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(I)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    .line 367
    .restart local v3    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    :goto_0
    const-string v4, "DES"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 369
    instance-of v4, v3, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v4, :cond_4

    .line 371
    move-object v4, v3

    check-cast v4, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v4

    check-cast v4, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    .line 373
    .local v4, "kParam":Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/crypto/params/DESParameters;->setOddParity([B)V

    .line 374
    .end local v4    # "kParam":Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    goto :goto_1

    .line 377
    :cond_4
    move-object v4, v3

    check-cast v4, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    .line 379
    .restart local v4    # "kParam":Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/crypto/params/DESParameters;->setOddParity([B)V

    .line 383
    .end local v4    # "kParam":Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    :cond_5
    :goto_1
    return-object v3

    .line 328
    .end local v0    # "pbeParam":Ljavax/crypto/spec/PBEParameterSpec;
    .end local v1    # "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    .end local v2    # "key":[B
    .end local v3    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Need a PBEParameter spec with a PBE key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist makePBEParameters(Ljavax/crypto/spec/PBEKeySpec;IIII)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .locals 5
    .param p0, "keySpec"    # Ljavax/crypto/spec/PBEKeySpec;
    .param p1, "type"    # I
    .param p2, "hash"    # I
    .param p3, "keySize"    # I
    .param p4, "ivSize"    # I

    .line 452
    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;

    move-result-object v0

    .line 456
    .local v0, "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    invoke-static {p1, p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->convertPassword(ILjavax/crypto/spec/PBEKeySpec;)[B

    move-result-object v1

    .line 458
    .local v1, "key":[B
    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v2

    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 460
    if-eqz p4, :cond_0

    .line 462
    invoke-virtual {v0, p3, p4}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(II)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    .local v2, "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    goto :goto_0

    .line 466
    .end local v2    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    :cond_0
    invoke-virtual {v0, p3}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(I)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    .line 469
    .restart local v2    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v1

    if-eq v3, v4, :cond_1

    .line 471
    const/4 v4, 0x0

    aput-byte v4, v1, v3

    .line 469
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 474
    .end local v3    # "i":I
    :cond_1
    return-object v2
.end method

.method public static blacklist makePBEParameters([BIIIILjava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .locals 14
    .param p0, "pbeKey"    # [B
    .param p1, "scheme"    # I
    .param p2, "digest"    # I
    .param p3, "keySize"    # I
    .param p4, "ivSize"    # I
    .param p5, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p6, "targetAlgorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 257
    move v0, p1

    move/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p5

    if-eqz v3, :cond_5

    instance-of v4, v3, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v4, :cond_5

    .line 262
    move-object v4, v3

    check-cast v4, Ljavax/crypto/spec/PBEParameterSpec;

    .line 263
    .local v4, "pbeParam":Ljavax/crypto/spec/PBEParameterSpec;
    invoke-static/range {p1 .. p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;

    move-result-object v5

    .line 264
    .local v5, "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    move-object v6, p0

    .line 272
    .local v6, "key":[B
    invoke-virtual {v4}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v7

    invoke-virtual {v4}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 274
    if-eqz v2, :cond_2

    .line 276
    invoke-virtual {v5, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(II)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v7

    .line 280
    .local v7, "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    nop

    .line 281
    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->getParameterSpecFromPBEParameterSpec(Ljavax/crypto/spec/PBEParameterSpec;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v8

    .line 282
    .local v8, "parameterSpecFromPBEParameterSpec":Ljava/security/spec/AlgorithmParameterSpec;
    const/4 v9, 0x1

    if-eq v0, v9, :cond_0

    const/4 v9, 0x5

    if-ne v0, v9, :cond_1

    :cond_0
    instance-of v9, v8, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v9, :cond_1

    .line 284
    move-object v9, v7

    check-cast v9, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 285
    .local v9, "parametersWithIV":Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;
    move-object v10, v8

    check-cast v10, Ljavax/crypto/spec/IvParameterSpec;

    .line 287
    .local v10, "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    new-instance v11, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 288
    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v12

    check-cast v12, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    .line 289
    invoke-virtual {v10}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;[B)V

    move-object v7, v11

    .line 292
    .end local v8    # "parameterSpecFromPBEParameterSpec":Ljava/security/spec/AlgorithmParameterSpec;
    .end local v9    # "parametersWithIV":Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;
    .end local v10    # "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    :cond_1
    goto :goto_0

    .line 295
    .end local v7    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    :cond_2
    invoke-virtual {v5, v1}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(I)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v7

    .line 298
    .restart local v7    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    :goto_0
    const-string v8, "DES"

    move-object/from16 v9, p6

    invoke-virtual {v9, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 300
    instance-of v8, v7, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v8, :cond_3

    .line 302
    move-object v8, v7

    check-cast v8, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v8

    check-cast v8, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    .line 304
    .local v8, "kParam":Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/org/bouncycastle/crypto/params/DESParameters;->setOddParity([B)V

    .line 305
    .end local v8    # "kParam":Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    goto :goto_1

    .line 308
    :cond_3
    move-object v8, v7

    check-cast v8, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    .line 310
    .restart local v8    # "kParam":Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/org/bouncycastle/crypto/params/DESParameters;->setOddParity([B)V

    .line 314
    .end local v8    # "kParam":Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    :cond_4
    :goto_1
    return-object v7

    .line 257
    .end local v4    # "pbeParam":Ljavax/crypto/spec/PBEParameterSpec;
    .end local v5    # "generator":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    .end local v6    # "key":[B
    .end local v7    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    :cond_5
    move-object/from16 v9, p6

    .line 259
    new-instance v4, Ljava/security/InvalidAlgorithmParameterException;

    const-string v5, "Need a PBEParameter spec with a PBE key."

    invoke-direct {v4, v5}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
