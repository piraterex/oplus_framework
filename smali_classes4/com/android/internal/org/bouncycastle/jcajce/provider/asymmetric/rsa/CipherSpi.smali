.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;
.source "CipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi$NoPadding;
    }
.end annotation


# instance fields
.field private blacklist bOut:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;

.field private blacklist cipher:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

.field private blacklist engineParams:Ljava/security/AlgorithmParameters;

.field private final blacklist helper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

.field private blacklist paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private blacklist privateKeyOnly:Z

.field private blacklist publicKeyOnly:Z


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;)V
    .locals 1
    .param p1, "engine"    # Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 65
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;-><init>()V

    .line 54
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->helper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->publicKeyOnly:Z

    .line 60
    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->privateKeyOnly:Z

    .line 61
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;

    .line 66
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 67
    return-void
.end method

.method public constructor blacklist <init>(Ljavax/crypto/spec/OAEPParameterSpec;)V
    .locals 3
    .param p1, "pSpec"    # Ljavax/crypto/spec/OAEPParameterSpec;

    .line 71
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;-><init>()V

    .line 54
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->helper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->publicKeyOnly:Z

    .line 60
    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->privateKeyOnly:Z

    .line 61
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;

    .line 74
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    nop

    .line 80
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljavax/crypto/NoSuchPaddingException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljavax/crypto/NoSuchPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor blacklist <init>(ZZLcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;)V
    .locals 1
    .param p1, "publicKeyOnly"    # Z
    .param p2, "privateKeyOnly"    # Z
    .param p3, "engine"    # Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 86
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;-><init>()V

    .line 54
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->helper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->publicKeyOnly:Z

    .line 60
    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->privateKeyOnly:Z

    .line 61
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;

    .line 87
    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->publicKeyOnly:Z

    .line 88
    iput-boolean p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->privateKeyOnly:Z

    .line 89
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 90
    return-void
.end method

.method private blacklist getOutput()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 549
    const-string/jumbo v0, "unable to decrypt block"

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;->getBuf()[B

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;->size()I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v0
    :try_end_0
    .catch Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 561
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;->erase()V

    .line 549
    return-object v0

    .line 561
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 555
    :catch_0
    move-exception v1

    .line 557
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_1
    new-instance v2, Lcom/android/internal/org/bouncycastle/jcajce/provider/util/BadBlockException;

    invoke-direct {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/util/BadBlockException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;
    throw v2

    .line 551
    .end local v1    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local p0    # "this":Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;
    :catch_1
    move-exception v1

    .line 553
    .local v1, "e":Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
    new-instance v2, Lcom/android/internal/org/bouncycastle/jcajce/provider/util/BadBlockException;

    invoke-direct {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/util/BadBlockException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 561
    .end local v1    # "e":Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
    .restart local p0    # "this":Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;
    :goto_0
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;->erase()V

    .line 562
    throw v0
.end method

.method private blacklist initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V
    .locals 5
    .param p1, "pSpec"    # Ljavax/crypto/spec/OAEPParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .line 96
    invoke-virtual {p1}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    check-cast v0, Ljava/security/spec/MGF1ParameterSpec;

    .line 97
    .local v0, "mgfParams":Ljava/security/spec/MGF1ParameterSpec;
    invoke-virtual {v0}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/util/DigestFactory;->getDigest(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v1

    .line 99
    .local v1, "digest":Lcom/android/internal/org/bouncycastle/crypto/Digest;
    if-eqz v1, :cond_0

    .line 104
    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;

    new-instance v3, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v3}, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;-><init>()V

    invoke-virtual {p1}, Ljavax/crypto/spec/OAEPParameterSpec;->getPSource()Ljavax/crypto/spec/PSource;

    move-result-object v4

    check-cast v4, Ljavax/crypto/spec/PSource$PSpecified;

    invoke-virtual {v4}, Ljavax/crypto/spec/PSource$PSpecified;->getValue()[B

    move-result-object v4

    invoke-direct {v2, v3, v1, v4}, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;-><init>(Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;Lcom/android/internal/org/bouncycastle/crypto/Digest;[B)V

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 105
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 106
    return-void

    .line 101
    :cond_0
    new-instance v2, Ljavax/crypto/NoSuchPaddingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no match on OAEP constructor for digest algorithm: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method protected whitelist test-api engineDoFinal([BII[BI)I
    .locals 4
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .line 509
    invoke-virtual {p0, p3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->engineGetOutputSize(I)I

    move-result v0

    add-int/2addr v0, p5

    array-length v1, p4

    if-gt v0, v1, :cond_5

    .line 514
    if-eqz p1, :cond_0

    .line 516
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;->write([BII)V

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;

    const-string/jumbo v1, "too much data for RSA block"

    if-eqz v0, :cond_2

    .line 521
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;->size()I

    move-result v0

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-gt v0, v2, :cond_1

    goto :goto_0

    .line 523
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 528
    :cond_2
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;->size()I

    move-result v0

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v2

    if-gt v0, v2, :cond_4

    .line 534
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->getOutput()[B

    move-result-object v0

    .line 536
    .local v0, "out":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-eq v1, v2, :cond_3

    .line 538
    add-int v2, p5, v1

    aget-byte v3, v0, v1

    aput-byte v3, p4, v2

    .line 536
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 541
    .end local v1    # "i":I
    :cond_3
    array-length v1, v0

    return v1

    .line 530
    .end local v0    # "out":[B
    :cond_4
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 511
    :cond_5
    new-instance v0, Ljavax/crypto/ShortBufferException;

    const-string/jumbo v1, "output buffer too short for input."

    invoke-direct {v0, v1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineDoFinal([BII)[B
    .locals 3
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 478
    if-eqz p1, :cond_0

    .line 480
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;->write([BII)V

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;

    const-string/jumbo v1, "too much data for RSA block"

    if-eqz v0, :cond_2

    .line 485
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;->size()I

    move-result v0

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-gt v0, v2, :cond_1

    goto :goto_0

    .line 487
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 492
    :cond_2
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;->size()I

    move-result v0

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v2

    if-gt v0, v2, :cond_3

    .line 498
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->getOutput()[B

    move-result-object v0

    return-object v0

    .line 494
    :cond_3
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineGetBlockSize()I
    .locals 3

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 114
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "RSA Cipher not initialised"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected whitelist test-api engineGetKeySize(Ljava/security/Key;)I
    .locals 2
    .param p1, "key"    # Ljava/security/Key;

    .line 123
    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v0, :cond_0

    .line 125
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/RSAPrivateKey;

    .line 127
    .local v0, "k":Ljava/security/interfaces/RSAPrivateKey;
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    return v1

    .line 129
    .end local v0    # "k":Ljava/security/interfaces/RSAPrivateKey;
    :cond_0
    instance-of v0, p1, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v0, :cond_1

    .line 131
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    .line 133
    .local v0, "k":Ljava/security/interfaces/RSAPublicKey;
    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    return v1

    .line 136
    .end local v0    # "k":Ljava/security/interfaces/RSAPublicKey;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "not an RSA key!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineGetOutputSize(I)I
    .locals 3
    .param p1, "inputLen"    # I

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 146
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "RSA Cipher not initialised"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected whitelist test-api engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

    if-eqz v0, :cond_0

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->helper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

    const-string v1, "OAEP"

    invoke-interface {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;->createAlgorithmParameters(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    .line 161
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 170
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    return-object v0
.end method

.method protected whitelist test-api engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 5
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/AlgorithmParameters;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 385
    const/4 v0, 0x0

    .line 387
    .local v0, "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    if-eqz p3, :cond_0

    .line 391
    :try_start_0
    const-class v1, Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-virtual {p3, v1}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 396
    goto :goto_0

    .line 393
    :catch_0
    move-exception v1

    .line 395
    .local v1, "e":Ljava/security/spec/InvalidParameterSpecException;
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot recognise parameters: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/security/spec/InvalidParameterSpecException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 399
    .end local v1    # "e":Ljava/security/spec/InvalidParameterSpecException;
    :cond_0
    :goto_0
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    .line 400
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 401
    return-void
.end method

.method protected whitelist test-api engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 4
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 411
    const/4 v0, 0x0

    :try_start_0
    move-object v1, v0

    check-cast v1, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    nop

    .line 418
    return-void

    .line 413
    :catch_0
    move-exception v0

    .line 416
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Eeeek! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/InvalidAlgorithmParameterException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected whitelist test-api engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 9
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 283
    if-eqz p3, :cond_1

    instance-of v0, p3, Ljavax/crypto/spec/OAEPParameterSpec;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 346
    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown parameter type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_1
    :goto_0
    instance-of v0, p2, Ljava/security/interfaces/RSAPublicKey;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 287
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->privateKeyOnly:Z

    if-eqz v0, :cond_3

    if-eq p1, v1, :cond_2

    goto :goto_1

    .line 289
    :cond_2
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "mode 1 requires RSAPrivateKey"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_3
    :goto_1
    move-object v0, p2

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/RSAUtil;->generatePublicKeyParameter(Ljava/security/interfaces/RSAPublicKey;)Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    move-result-object v0

    .local v0, "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    goto :goto_3

    .line 295
    .end local v0    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    :cond_4
    instance-of v0, p2, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v0, :cond_f

    .line 297
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->publicKeyOnly:Z

    if-eqz v0, :cond_6

    if-eq p1, v1, :cond_5

    goto :goto_2

    .line 299
    :cond_5
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "mode 2 requires RSAPublicKey"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_6
    :goto_2
    move-object v0, p2

    check-cast v0, Ljava/security/interfaces/RSAPrivateKey;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/RSAUtil;->generatePrivateKeyParameter(Ljava/security/interfaces/RSAPrivateKey;)Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    move-result-object v0

    .line 310
    .restart local v0    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    :goto_3
    if-eqz p3, :cond_c

    .line 312
    move-object v2, p3

    check-cast v2, Ljavax/crypto/spec/OAEPParameterSpec;

    .line 314
    .local v2, "spec":Ljavax/crypto/spec/OAEPParameterSpec;
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 316
    invoke-virtual {v2}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFAlgorithm()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MGF1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v2}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFAlgorithm()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_mgf1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_4

    .line 318
    :cond_7
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v3, "unknown mask generation function specified"

    invoke-direct {v1, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 321
    :cond_8
    :goto_4
    invoke-virtual {v2}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v3

    instance-of v3, v3, Ljava/security/spec/MGF1ParameterSpec;

    if-eqz v3, :cond_b

    .line 326
    invoke-virtual {v2}, Ljavax/crypto/spec/OAEPParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/util/DigestFactory;->getDigest(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v3

    .line 328
    .local v3, "digest":Lcom/android/internal/org/bouncycastle/crypto/Digest;
    if-eqz v3, :cond_a

    .line 333
    invoke-virtual {v2}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v4

    check-cast v4, Ljava/security/spec/MGF1ParameterSpec;

    .line 334
    .local v4, "mgfParams":Ljava/security/spec/MGF1ParameterSpec;
    invoke-virtual {v4}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/jcajce/provider/util/DigestFactory;->getDigest(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v5

    .line 336
    .local v5, "mgfDigest":Lcom/android/internal/org/bouncycastle/crypto/Digest;
    if-eqz v5, :cond_9

    .line 341
    new-instance v6, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;

    new-instance v7, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v7}, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;-><init>()V

    invoke-virtual {v2}, Ljavax/crypto/spec/OAEPParameterSpec;->getPSource()Ljavax/crypto/spec/PSource;

    move-result-object v8

    check-cast v8, Ljavax/crypto/spec/PSource$PSpecified;

    invoke-virtual {v8}, Ljavax/crypto/spec/PSource$PSpecified;->getValue()[B

    move-result-object v8

    invoke-direct {v6, v7, v3, v5, v8}, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;-><init>(Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;Lcom/android/internal/org/bouncycastle/crypto/Digest;Lcom/android/internal/org/bouncycastle/crypto/Digest;[B)V

    iput-object v6, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 342
    .end local v2    # "spec":Ljavax/crypto/spec/OAEPParameterSpec;
    .end local v3    # "digest":Lcom/android/internal/org/bouncycastle/crypto/Digest;
    .end local v4    # "mgfParams":Ljava/security/spec/MGF1ParameterSpec;
    .end local v5    # "mgfDigest":Lcom/android/internal/org/bouncycastle/crypto/Digest;
    goto :goto_5

    .line 338
    .restart local v2    # "spec":Ljavax/crypto/spec/OAEPParameterSpec;
    .restart local v3    # "digest":Lcom/android/internal/org/bouncycastle/crypto/Digest;
    .restart local v4    # "mgfParams":Ljava/security/spec/MGF1ParameterSpec;
    .restart local v5    # "mgfDigest":Lcom/android/internal/org/bouncycastle/crypto/Digest;
    :cond_9
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "no match on MGF digest algorithm: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 330
    .end local v4    # "mgfParams":Ljava/security/spec/MGF1ParameterSpec;
    .end local v5    # "mgfDigest":Lcom/android/internal/org/bouncycastle/crypto/Digest;
    :cond_a
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "no match on digest algorithm: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljavax/crypto/spec/OAEPParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 323
    .end local v3    # "digest":Lcom/android/internal/org/bouncycastle/crypto/Digest;
    :cond_b
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v3, "unkown MGF parameters"

    invoke-direct {v1, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 349
    .end local v2    # "spec":Ljavax/crypto/spec/OAEPParameterSpec;
    :cond_c
    :goto_5
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    instance-of v2, v2, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;

    if-nez v2, :cond_e

    .line 351
    if-eqz p4, :cond_d

    .line 353
    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-direct {v2, v0, p4}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    move-object v0, v2

    goto :goto_6

    .line 357
    :cond_d
    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    move-object v0, v2

    .line 361
    :cond_e
    :goto_6
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;->reset()V

    .line 363
    packed-switch p1, :pswitch_data_0

    .line 374
    new-instance v1, Ljava/security/InvalidParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown opmode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " passed to RSA"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 371
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 372
    goto :goto_7

    .line 367
    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v2, v1, v0}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 368
    nop

    .line 376
    :goto_7
    return-void

    .line 307
    .end local v0    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    :cond_f
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "unknown key type passed to RSA"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected whitelist test-api engineSetMode(Ljava/lang/String;)V
    .locals 4
    .param p1, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 177
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "md":Ljava/lang/String;
    const-string v1, "NONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "ECB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 186
    iput-boolean v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->privateKeyOnly:Z

    .line 187
    iput-boolean v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->publicKeyOnly:Z

    .line 188
    return-void

    .line 190
    :cond_1
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 192
    iput-boolean v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->privateKeyOnly:Z

    .line 193
    iput-boolean v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->publicKeyOnly:Z

    .line 194
    return-void

    .line 197
    :cond_2
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t support mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 181
    :cond_3
    :goto_0
    return-void
.end method

.method protected whitelist test-api engineSetPadding(Ljava/lang/String;)V
    .locals 6
    .param p1, "padding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .line 204
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "pad":Ljava/lang/String;
    const-string v1, "NOPADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;-><init>()V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    goto/16 :goto_5

    .line 210
    :cond_0
    const-string v1, "PKCS1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 212
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;

    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v2}, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;-><init>()V

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;-><init>(Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    goto/16 :goto_5

    .line 220
    :cond_1
    const-string v1, "OAEPWITHMD5ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "MGF1"

    if-eqz v1, :cond_2

    .line 222
    new-instance v1, Ljavax/crypto/spec/OAEPParameterSpec;

    new-instance v3, Ljava/security/spec/MGF1ParameterSpec;

    const-string v4, "MD5"

    invoke-direct {v3, v4}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {v1, v4, v2, v3, v5}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    goto/16 :goto_5

    .line 224
    :cond_2
    const-string v1, "OAEPPADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 226
    sget-object v1, Ljavax/crypto/spec/OAEPParameterSpec;->DEFAULT:Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    goto/16 :goto_5

    .line 228
    :cond_3
    const-string v1, "OAEPWITHSHA1ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "OAEPWITHSHA-1ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_4

    .line 232
    :cond_4
    const-string v1, "OAEPWITHSHA224ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "OAEPWITHSHA-224ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto/16 :goto_3

    .line 236
    :cond_5
    const-string v1, "OAEPWITHSHA256ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "OAEPWITHSHA-256ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    .line 240
    :cond_6
    const-string v1, "OAEPWITHSHA384ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "OAEPWITHSHA-384ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_1

    .line 244
    :cond_7
    const-string v1, "OAEPWITHSHA512ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "OAEPWITHSHA-512ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_0

    .line 270
    :cond_8
    new-instance v1, Ljavax/crypto/NoSuchPaddingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " unavailable with RSA."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 246
    :cond_9
    :goto_0
    new-instance v1, Ljavax/crypto/spec/OAEPParameterSpec;

    sget-object v3, Ljava/security/spec/MGF1ParameterSpec;->SHA512:Ljava/security/spec/MGF1ParameterSpec;

    sget-object v4, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    const-string v5, "SHA-512"

    invoke-direct {v1, v5, v2, v3, v4}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    goto :goto_5

    .line 242
    :cond_a
    :goto_1
    new-instance v1, Ljavax/crypto/spec/OAEPParameterSpec;

    sget-object v3, Ljava/security/spec/MGF1ParameterSpec;->SHA384:Ljava/security/spec/MGF1ParameterSpec;

    sget-object v4, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    const-string v5, "SHA-384"

    invoke-direct {v1, v5, v2, v3, v4}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    goto :goto_5

    .line 238
    :cond_b
    :goto_2
    new-instance v1, Ljavax/crypto/spec/OAEPParameterSpec;

    sget-object v3, Ljava/security/spec/MGF1ParameterSpec;->SHA256:Ljava/security/spec/MGF1ParameterSpec;

    sget-object v4, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    const-string v5, "SHA-256"

    invoke-direct {v1, v5, v2, v3, v4}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    goto :goto_5

    .line 234
    :cond_c
    :goto_3
    new-instance v1, Ljavax/crypto/spec/OAEPParameterSpec;

    new-instance v3, Ljava/security/spec/MGF1ParameterSpec;

    const-string v4, "SHA-224"

    invoke-direct {v3, v4}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {v1, v4, v2, v3, v5}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    goto :goto_5

    .line 230
    :cond_d
    :goto_4
    sget-object v1, Ljavax/crypto/spec/OAEPParameterSpec;->DEFAULT:Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    .line 272
    :goto_5
    return-void
.end method

.method protected whitelist test-api engineUpdate([BII[BI)I
    .locals 3
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I

    .line 452
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;->write([BII)V

    .line 454
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;

    const-string/jumbo v1, "too much data for RSA block"

    if-eqz v0, :cond_1

    .line 456
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;->size()I

    move-result v0

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-gt v0, v2, :cond_0

    goto :goto_0

    .line 458
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 463
    :cond_1
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;->size()I

    move-result v0

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v2

    if-gt v0, v2, :cond_2

    .line 469
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 465
    :cond_2
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineUpdate([BII)[B
    .locals 3
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    .line 425
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;->write([BII)V

    .line 427
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;

    const-string/jumbo v1, "too much data for RSA block"

    if-eqz v0, :cond_1

    .line 429
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;->size()I

    move-result v0

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-gt v0, v2, :cond_0

    goto :goto_0

    .line 431
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    :cond_1
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->bOut:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$ErasableOutputStream;->size()I

    move-result v0

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/rsa/CipherSpi;->cipher:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v2

    if-gt v0, v2, :cond_2

    .line 442
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 438
    :cond_2
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
