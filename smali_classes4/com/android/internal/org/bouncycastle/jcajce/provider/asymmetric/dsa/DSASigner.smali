.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;
.super Ljava/security/SignatureSpi;
.source "DSASigner.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;
.implements Lcom/android/internal/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner$noneDSA;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner$dsa256;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner$dsa224;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner$stdDSA;
    }
.end annotation


# instance fields
.field private blacklist digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

.field private blacklist encoding:Lcom/android/internal/org/bouncycastle/crypto/signers/DSAEncoding;

.field private blacklist random:Ljava/security/SecureRandom;

.field private blacklist signer:Lcom/android/internal/org/bouncycastle/crypto/DSAExt;


# direct methods
.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;Lcom/android/internal/org/bouncycastle/crypto/DSAExt;)V
    .locals 1
    .param p1, "digest"    # Lcom/android/internal/org/bouncycastle/crypto/Digest;
    .param p2, "signer"    # Lcom/android/internal/org/bouncycastle/crypto/DSAExt;

    .line 48
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    .line 42
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/signers/StandardDSAEncoding;->INSTANCE:Lcom/android/internal/org/bouncycastle/crypto/signers/StandardDSAEncoding;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->encoding:Lcom/android/internal/org/bouncycastle/crypto/signers/DSAEncoding;

    .line 49
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    .line 50
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->signer:Lcom/android/internal/org/bouncycastle/crypto/DSAExt;

    .line 51
    return-void
.end method


# virtual methods
.method protected blacklist checkKey(Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;)V
    .locals 6
    .param p1, "params"    # Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 161
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 162
    .local v0, "valueL":I
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    .line 163
    .local v1, "valueN":I
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    .line 166
    .local v2, "digestSize":I
    const/16 v3, 0x400

    if-lt v0, v3, :cond_8

    const/16 v4, 0xc00

    if-gt v0, v4, :cond_8

    rem-int/lit16 v5, v0, 0x400

    if-nez v5, :cond_8

    .line 168
    if-ne v0, v3, :cond_1

    const/16 v3, 0xa0

    if-ne v1, v3, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string/jumbo v4, "valueN must be 160 for valueL = 1024"

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 170
    :cond_1
    :goto_0
    const/16 v3, 0x800

    const/16 v5, 0x100

    if-ne v0, v3, :cond_3

    const/16 v3, 0xe0

    if-eq v1, v3, :cond_3

    if-ne v1, v5, :cond_2

    goto :goto_1

    .line 171
    :cond_2
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string/jumbo v4, "valueN must be 224 or 256 for valueL = 2048"

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 172
    :cond_3
    :goto_1
    if-ne v0, v4, :cond_5

    if-ne v1, v5, :cond_4

    goto :goto_2

    .line 173
    :cond_4
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string/jumbo v4, "valueN must be 256 for valueL = 3072"

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 175
    :cond_5
    :goto_2
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    instance-of v3, v3, Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest;

    if-nez v3, :cond_7

    mul-int/lit8 v3, v2, 0x8

    if-gt v1, v3, :cond_6

    goto :goto_3

    .line 176
    :cond_6
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string v4, "Key is too strong for this signature algorithm"

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 178
    :cond_7
    :goto_3
    return-void

    .line 167
    :cond_8
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string/jumbo v4, "valueL values must be between 1024 and 3072 and a multiple of 1024"

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected whitelist test-api engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "param"    # Ljava/lang/String;

    .line 197
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineGetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 1

    .line 150
    const/4 v0, 0x0

    return-object v0
.end method

.method protected whitelist test-api engineInitSign(Ljava/security/PrivateKey;)V
    .locals 4
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 76
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSAUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    .line 79
    .local v0, "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    move-object v1, v0

    check-cast v1, Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyParameters;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyParameters;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    move-result-object v1

    .line 80
    .local v1, "dsaParam":Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;
    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->checkKey(Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;)V

    .line 82
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->random:Ljava/security/SecureRandom;

    if-eqz v2, :cond_0

    .line 84
    new-instance v3, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-direct {v3, v0, v2}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    move-object v0, v3

    .line 87
    :cond_0
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->reset()V

    .line 88
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->signer:Lcom/android/internal/org/bouncycastle/crypto/DSAExt;

    const/4 v3, 0x1

    invoke-interface {v2, v3, v0}, Lcom/android/internal/org/bouncycastle/crypto/DSAExt;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 89
    return-void
.end method

.method protected whitelist test-api engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .locals 0
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 68
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->random:Ljava/security/SecureRandom;

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->engineInitSign(Ljava/security/PrivateKey;)V

    .line 70
    return-void
.end method

.method protected whitelist test-api engineInitVerify(Ljava/security/PublicKey;)V
    .locals 3
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 57
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSAUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    .line 59
    .local v0, "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->reset()V

    .line 60
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->signer:Lcom/android/internal/org/bouncycastle/crypto/DSAExt;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/crypto/DSAExt;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 61
    return-void
.end method

.method protected whitelist test-api engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 188
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;

    .line 156
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineSign()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    .line 112
    .local v0, "hash":[B
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 116
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->signer:Lcom/android/internal/org/bouncycastle/crypto/DSAExt;

    invoke-interface {v1, v0}, Lcom/android/internal/org/bouncycastle/crypto/DSAExt;->generateSignature([B)[Ljava/math/BigInteger;

    move-result-object v1

    .line 118
    .local v1, "sig":[Ljava/math/BigInteger;
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->encoding:Lcom/android/internal/org/bouncycastle/crypto/signers/DSAEncoding;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->signer:Lcom/android/internal/org/bouncycastle/crypto/DSAExt;

    invoke-interface {v4}, Lcom/android/internal/org/bouncycastle/crypto/DSAExt;->getOrder()Ljava/math/BigInteger;

    move-result-object v4

    aget-object v2, v1, v2

    const/4 v5, 0x1

    aget-object v5, v1, v5

    invoke-interface {v3, v4, v2, v5}, Lcom/android/internal/org/bouncycastle/crypto/signers/DSAEncoding;->encode(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 120
    .end local v1    # "sig":[Ljava/math/BigInteger;
    :catch_0
    move-exception v1

    .line 122
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/SignatureException;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected whitelist test-api engineUpdate(B)V
    .locals 1
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update(B)V

    .line 96
    return-void
.end method

.method protected whitelist test-api engineUpdate([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 105
    return-void
.end method

.method protected whitelist test-api engineVerify([B)Z
    .locals 5
    .param p1, "sigBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    .line 132
    .local v0, "hash":[B
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->encoding:Lcom/android/internal/org/bouncycastle/crypto/signers/DSAEncoding;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->signer:Lcom/android/internal/org/bouncycastle/crypto/DSAExt;

    invoke-interface {v3}, Lcom/android/internal/org/bouncycastle/crypto/DSAExt;->getOrder()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v1, v3, p1}, Lcom/android/internal/org/bouncycastle/crypto/signers/DSAEncoding;->decode(Ljava/math/BigInteger;[B)[Ljava/math/BigInteger;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .local v1, "sig":[Ljava/math/BigInteger;
    nop

    .line 145
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;->signer:Lcom/android/internal/org/bouncycastle/crypto/DSAExt;

    aget-object v2, v1, v2

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-interface {v3, v0, v2, v4}, Lcom/android/internal/org/bouncycastle/crypto/DSAExt;->verifySignature([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v2

    return v2

    .line 140
    .end local v1    # "sig":[Ljava/math/BigInteger;
    :catch_0
    move-exception v1

    .line 142
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/SignatureException;

    const-string v3, "error decoding signature bytes."

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
