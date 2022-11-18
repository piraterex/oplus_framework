.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;
.source "DES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/DES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DESPBEKeyFactory"
.end annotation


# instance fields
.field private blacklist digest:I

.field private blacklist forCipher:Z

.field private blacklist ivSize:I

.field private blacklist keySize:I

.field private blacklist scheme:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;ZIIII)V
    .locals 0
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p3, "forCipher"    # Z
    .param p4, "scheme"    # I
    .param p5, "digest"    # I
    .param p6, "keySize"    # I
    .param p7, "ivSize"    # I

    .line 339
    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;-><init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 341
    iput-boolean p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->forCipher:Z

    .line 342
    iput p4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->scheme:I

    .line 343
    iput p5, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->digest:I

    .line 344
    iput p6, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->keySize:I

    .line 345
    iput p7, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->ivSize:I

    .line 346
    return-void
.end method


# virtual methods
.method protected whitelist test-api engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .locals 13
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 352
    instance-of v0, p1, Ljavax/crypto/spec/PBEKeySpec;

    if-eqz v0, :cond_3

    .line 354
    move-object v0, p1

    check-cast v0, Ljavax/crypto/spec/PBEKeySpec;

    .line 357
    .local v0, "pbeSpec":Ljavax/crypto/spec/PBEKeySpec;
    invoke-virtual {v0}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v1

    if-nez v1, :cond_0

    .line 370
    new-instance v10, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->algName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->algOid:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->scheme:I

    iget v5, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->digest:I

    iget v6, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->keySize:I

    iget v7, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->ivSize:I

    const/4 v9, 0x0

    move-object v1, v10

    move-object v8, v0

    invoke-direct/range {v1 .. v9}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;-><init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;IIIILjavax/crypto/spec/PBEKeySpec;Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    return-object v10

    .line 376
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->forCipher:Z

    if-eqz v1, :cond_1

    .line 378
    iget v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->scheme:I

    iget v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->digest:I

    iget v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->keySize:I

    iget v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->ivSize:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEParameters(Ljavax/crypto/spec/PBEKeySpec;IIII)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    move-object v10, v1

    .local v1, "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    goto :goto_0

    .line 382
    .end local v1    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    :cond_1
    iget v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->scheme:I

    iget v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->digest:I

    iget v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->keySize:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEMacParameters(Ljavax/crypto/spec/PBEKeySpec;III)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    move-object v10, v1

    .line 386
    .local v10, "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    :goto_0
    instance-of v1, v10, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v1, :cond_2

    .line 388
    move-object v1, v10

    check-cast v1, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    move-object v11, v1

    .local v1, "kParam":Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    goto :goto_1

    .line 392
    .end local v1    # "kParam":Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    :cond_2
    move-object v1, v10

    check-cast v1, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    move-object v11, v1

    .line 395
    .local v11, "kParam":Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    :goto_1
    invoke-virtual {v11}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/crypto/params/DESParameters;->setOddParity([B)V

    .line 397
    new-instance v12, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->algName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->algOid:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->scheme:I

    iget v5, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->digest:I

    iget v6, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->keySize:I

    iget v7, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/DES$DESPBEKeyFactory;->ivSize:I

    move-object v1, v12

    move-object v8, v0

    move-object v9, v10

    invoke-direct/range {v1 .. v9}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;-><init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;IIIILjavax/crypto/spec/PBEKeySpec;Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    return-object v12

    .line 400
    .end local v0    # "pbeSpec":Ljavax/crypto/spec/PBEKeySpec;
    .end local v10    # "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .end local v11    # "kParam":Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;
    :cond_3
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "Invalid KeySpec"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
