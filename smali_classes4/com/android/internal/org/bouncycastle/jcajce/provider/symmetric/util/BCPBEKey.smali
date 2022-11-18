.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;
.super Ljava/lang/Object;
.source "BCPBEKey.java"

# interfaces
.implements Ljavax/crypto/interfaces/PBEKey;
.implements Ljavax/security/auth/Destroyable;


# instance fields
.field blacklist algorithm:Ljava/lang/String;

.field blacklist digest:I

.field private final blacklist hasBeenDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final blacklist iterationCount:I

.field blacklist ivSize:I

.field blacklist keySize:I

.field blacklist oid:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private final blacklist param:Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

.field private final blacklist password:[C

.field private final blacklist salt:[B

.field blacklist tryWrong:Z

.field blacklist type:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;IIIILjavax/crypto/spec/PBEKeySpec;Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .locals 2
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p3, "type"    # I
    .param p4, "digest"    # I
    .param p5, "keySize"    # I
    .param p6, "ivSize"    # I
    .param p7, "pbeKeySpec"    # Ljavax/crypto/spec/PBEKeySpec;
    .param p8, "param"    # Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->hasBeenDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    iput-boolean v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->tryWrong:Z

    .line 53
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->algorithm:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->oid:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 55
    iput p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->type:I

    .line 56
    iput p4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->digest:I

    .line 57
    iput p5, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->keySize:I

    .line 58
    iput p6, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->ivSize:I

    .line 59
    invoke-virtual {p7}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->password:[C

    .line 60
    invoke-virtual {p7}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->iterationCount:I

    .line 61
    invoke-virtual {p7}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->salt:[B

    .line 62
    iput-object p8, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->param:Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    .line 63
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .locals 2
    .param p1, "algName"    # Ljava/lang/String;
    .param p2, "param"    # Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->hasBeenDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    iput-boolean v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->tryWrong:Z

    .line 67
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->algorithm:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->param:Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->password:[C

    .line 70
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->iterationCount:I

    .line 71
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->salt:[B

    .line 72
    return-void
.end method

.method static blacklist checkDestroyed(Ljavax/security/auth/Destroyable;)V
    .locals 2
    .param p0, "destroyable"    # Ljavax/security/auth/Destroyable;

    .line 231
    invoke-interface {p0}, Ljavax/security/auth/Destroyable;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    return-void

    .line 233
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "key has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api destroy()V
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->hasBeenDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->password:[C

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 215
    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([CC)V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->salt:[B

    if-eqz v0, :cond_1

    .line 219
    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 222
    :cond_1
    return-void
.end method

.method public whitelist test-api getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 76
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->checkDestroyed(Ljavax/security/auth/Destroyable;)V

    .line 78
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method blacklist getDigest()I
    .locals 1

    .line 131
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->checkDestroyed(Ljavax/security/auth/Destroyable;)V

    .line 133
    iget v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->digest:I

    return v0
.end method

.method public whitelist test-api getEncoded()[B
    .locals 2

    .line 88
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->checkDestroyed(Ljavax/security/auth/Destroyable;)V

    .line 90
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->param:Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    if-eqz v0, :cond_1

    .line 94
    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v1, :cond_0

    .line 96
    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    .local v0, "kParam":Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    goto :goto_0

    .line 100
    .end local v0    # "kParam":Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    :cond_0
    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    .line 103
    .restart local v0    # "kParam":Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    return-object v1

    .line 107
    .end local v0    # "kParam":Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    :cond_1
    iget v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 109
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->password:[C

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS12PasswordToBytes([C)[B

    move-result-object v0

    return-object v0

    .line 111
    :cond_2
    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 113
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->password:[C

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToUTF8Bytes([C)[B

    move-result-object v0

    return-object v0

    .line 117
    :cond_3
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->password:[C

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToBytes([C)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getFormat()Ljava/lang/String;
    .locals 1

    .line 83
    const-string v0, "RAW"

    return-object v0
.end method

.method public whitelist test-api getIterationCount()I
    .locals 1

    .line 187
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->checkDestroyed(Ljavax/security/auth/Destroyable;)V

    .line 189
    iget v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->iterationCount:I

    return v0
.end method

.method public blacklist getIvSize()I
    .locals 1

    .line 145
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->checkDestroyed(Ljavax/security/auth/Destroyable;)V

    .line 147
    iget v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->ivSize:I

    return v0
.end method

.method blacklist getKeySize()I
    .locals 1

    .line 138
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->checkDestroyed(Ljavax/security/auth/Destroyable;)V

    .line 140
    iget v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->keySize:I

    return v0
.end method

.method public blacklist getOID()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 194
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->checkDestroyed(Ljavax/security/auth/Destroyable;)V

    .line 196
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->oid:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public blacklist getParam()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .locals 1

    .line 152
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->checkDestroyed(Ljavax/security/auth/Destroyable;)V

    .line 154
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->param:Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    return-object v0
.end method

.method public whitelist test-api getPassword()[C
    .locals 2

    .line 162
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->checkDestroyed(Ljavax/security/auth/Destroyable;)V

    .line 164
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->password:[C

    if-eqz v0, :cond_0

    .line 169
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([C)[C

    move-result-object v0

    return-object v0

    .line 166
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "no password available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getSalt()[B
    .locals 1

    .line 177
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->checkDestroyed(Ljavax/security/auth/Destroyable;)V

    .line 179
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->salt:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method blacklist getType()I
    .locals 1

    .line 124
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->checkDestroyed(Ljavax/security/auth/Destroyable;)V

    .line 126
    iget v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->type:I

    return v0
.end method

.method public whitelist test-api isDestroyed()Z
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->hasBeenDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public blacklist setTryWrongPKCS12Zero(Z)V
    .locals 0
    .param p1, "tryWrong"    # Z

    .line 201
    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->tryWrong:Z

    .line 202
    return-void
.end method

.method blacklist shouldTryWrongPKCS12()Z
    .locals 1

    .line 206
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->tryWrong:Z

    return v0
.end method
