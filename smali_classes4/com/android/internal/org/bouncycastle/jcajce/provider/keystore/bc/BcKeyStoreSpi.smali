.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;
.super Ljava/security/KeyStoreSpi;
.source "BcKeyStoreSpi.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/jce/interfaces/BCKeyStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BCKeyStoreException;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$Version1;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$Std;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;
    }
.end annotation


# static fields
.field static final blacklist CERTIFICATE:I = 0x1

.field static final blacklist KEY:I = 0x2

.field private static final blacklist KEY_CIPHER:Ljava/lang/String; = "PBEWithSHAAnd3-KeyTripleDES-CBC"

.field static final blacklist KEY_PRIVATE:I = 0x0

.field static final blacklist KEY_PUBLIC:I = 0x1

.field private static final blacklist KEY_SALT_SIZE:I = 0x14

.field static final blacklist KEY_SECRET:I = 0x2

.field private static final blacklist MIN_ITERATIONS:I = 0x400

.field static final blacklist NULL:I = 0x0

.field static final blacklist SEALED:I = 0x4

.field static final blacklist SECRET:I = 0x3

.field private static final blacklist STORE_CIPHER:Ljava/lang/String; = "PBEWithSHAAndTwofish-CBC"

.field private static final blacklist STORE_SALT_SIZE:I = 0x14

.field private static final blacklist STORE_VERSION:I = 0x2


# instance fields
.field private final blacklist helper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

.field protected blacklist random:Ljava/security/SecureRandom;

.field protected blacklist table:Ljava/util/Hashtable;

.field protected blacklist version:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$mdecodeKey(Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/io/DataInputStream;)Ljava/security/Key;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->decodeKey(Ljava/io/DataInputStream;)Ljava/security/Key;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mencodeKey(Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/security/Key;Ljava/io/DataOutputStream;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->encodeKey(Ljava/security/Key;Ljava/io/DataOutputStream;)V

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 1
    .param p1, "version"    # I

    .line 108
    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    .line 97
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    .line 99
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->random:Ljava/security/SecureRandom;

    .line 105
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->helper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

    .line 109
    iput p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->version:I

    .line 110
    return-void
.end method

.method private blacklist decodeCertificate(Ljava/io/DataInputStream;)Ljava/security/cert/Certificate;
    .locals 5
    .param p1, "dIn"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 372
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, "type":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    new-array v1, v1, [B

    .line 375
    .local v1, "cEnc":[B
    invoke-virtual {p1, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 379
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->helper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-interface {v2, v0}, Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;->createCertificateFactory(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 380
    .local v2, "cFact":Ljava/security/cert/CertificateFactory;
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 382
    .local v3, "bIn":Ljava/io/ByteArrayInputStream;
    invoke-virtual {v2, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 388
    .end local v2    # "cFact":Ljava/security/cert/CertificateFactory;
    .end local v3    # "bIn":Ljava/io/ByteArrayInputStream;
    :catch_0
    move-exception v2

    .line 390
    .local v2, "ex":Ljava/security/cert/CertificateException;
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/security/cert/CertificateException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 384
    .end local v2    # "ex":Ljava/security/cert/CertificateException;
    :catch_1
    move-exception v2

    .line 386
    .local v2, "ex":Ljava/security/NoSuchProviderException;
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/security/NoSuchProviderException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private blacklist decodeKey(Ljava/io/DataInputStream;)Ljava/security/Key;
    .locals 9
    .param p1, "dIn"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 424
    invoke-virtual {p1}, Ljava/io/DataInputStream;->read()I

    move-result v0

    .line 425
    .local v0, "keyType":I
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    .line 426
    .local v1, "format":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    .line 427
    .local v2, "algorithm":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    new-array v3, v3, [B

    .line 430
    .local v3, "enc":[B
    invoke-virtual {p1, v3}, Ljava/io/DataInputStream;->readFully([B)V

    .line 432
    const-string v4, "PKCS#8"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, " not recognised!"

    if-nez v4, :cond_4

    const-string v4, "PKCS8"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 436
    :cond_0
    const-string v4, "X.509"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "X509"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 440
    :cond_1
    const-string v4, "RAW"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 442
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v4, v3, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v4

    .line 446
    :cond_2
    new-instance v4, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Key format "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 438
    :cond_3
    :goto_0
    new-instance v4, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v4, v3}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .local v4, "spec":Ljava/security/spec/KeySpec;
    goto :goto_2

    .line 434
    .end local v4    # "spec":Ljava/security/spec/KeySpec;
    :cond_4
    :goto_1
    new-instance v4, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v4, v3}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 451
    .restart local v4    # "spec":Ljava/security/spec/KeySpec;
    :goto_2
    packed-switch v0, :pswitch_data_0

    .line 460
    :try_start_0
    new-instance v6, Ljava/io/IOException;

    goto :goto_3

    .line 458
    :pswitch_0
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->helper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-interface {v5, v2}, Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;->createSecretKeyFactory(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v5

    return-object v5

    .line 456
    :pswitch_1
    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->getPublicKey(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;

    move-result-object v5

    return-object v5

    .line 454
    :pswitch_2
    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->getPrivateKey(Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;

    move-result-object v5

    return-object v5

    .line 463
    :catch_0
    move-exception v5

    goto :goto_4

    .line 460
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Key type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "keyType":I
    .end local v1    # "format":Ljava/lang/String;
    .end local v2    # "algorithm":Ljava/lang/String;
    .end local v3    # "enc":[B
    .end local v4    # "spec":Ljava/security/spec/KeySpec;
    .end local p0    # "this":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;
    .end local p1    # "dIn":Ljava/io/DataInputStream;
    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    .restart local v0    # "keyType":I
    .restart local v1    # "format":Ljava/lang/String;
    .restart local v2    # "algorithm":Ljava/lang/String;
    .restart local v3    # "enc":[B
    .restart local v4    # "spec":Ljava/security/spec/KeySpec;
    .local v5, "e":Ljava/lang/Exception;
    .restart local p0    # "this":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;
    .restart local p1    # "dIn":Ljava/io/DataInputStream;
    :goto_4
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception creating key: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist encodeCertificate(Ljava/security/cert/Certificate;Ljava/io/DataOutputStream;)V
    .locals 3
    .param p1, "cert"    # Ljava/security/cert/Certificate;
    .param p2, "dOut"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 356
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    .line 358
    .local v0, "cEnc":[B
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 359
    array-length v1, v0

    invoke-virtual {p2, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 360
    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    .end local v0    # "cEnc":[B
    nop

    .line 366
    return-void

    .line 362
    :catch_0
    move-exception v0

    .line 364
    .local v0, "ex":Ljava/security/cert/CertificateEncodingException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist encodeKey(Ljava/security/Key;Ljava/io/DataOutputStream;)V
    .locals 2
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "dOut"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 399
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    .line 401
    .local v0, "enc":[B
    instance-of v1, p1, Ljava/security/PrivateKey;

    if-eqz v1, :cond_0

    .line 403
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/io/DataOutputStream;->write(I)V

    goto :goto_0

    .line 405
    :cond_0
    instance-of v1, p1, Ljava/security/PublicKey;

    if-eqz v1, :cond_1

    .line 407
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ljava/io/DataOutputStream;->write(I)V

    goto :goto_0

    .line 411
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 414
    :goto_0
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 415
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 416
    array-length v1, v0

    invoke-virtual {p2, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 417
    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 418
    return-void
.end method


# virtual methods
.method public whitelist test-api engineAliases()Ljava/util/Enumeration;
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api engineContainsAlias(Ljava/lang/String;)Z
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .line 509
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api engineDeleteEntry(Ljava/lang/String;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 516
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 518
    .local v0, "entry":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 520
    return-void

    .line 523
    :cond_0
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    return-void
.end method

.method public whitelist test-api engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;

    .line 529
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    .line 531
    .local v0, "entry":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;
    if-eqz v0, :cond_1

    .line 533
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 535
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/Certificate;

    return-object v1

    .line 539
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v1

    .line 541
    .local v1, "chain":[Ljava/security/cert/Certificate;
    if-eqz v1, :cond_1

    .line 543
    const/4 v2, 0x0

    aget-object v2, v1, v2

    return-object v2

    .line 548
    .end local v1    # "chain":[Ljava/security/cert/Certificate;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist test-api engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 4
    .param p1, "cert"    # Ljava/security/cert/Certificate;

    .line 554
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 555
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 557
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    .line 559
    .local v1, "entry":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getObject()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/security/cert/Certificate;

    if-eqz v2, :cond_1

    .line 561
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/Certificate;

    .line 563
    .local v2, "c":Ljava/security/cert/Certificate;
    invoke-virtual {v2, p1}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 565
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getAlias()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 567
    .end local v2    # "c":Ljava/security/cert/Certificate;
    :cond_0
    goto :goto_1

    .line 570
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v2

    .line 572
    .local v2, "chain":[Ljava/security/cert/Certificate;
    if-eqz v2, :cond_2

    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v3, p1}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 574
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getAlias()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 577
    .end local v1    # "entry":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;
    .end local v2    # "chain":[Ljava/security/cert/Certificate;
    :cond_2
    :goto_1
    goto :goto_0

    .line 579
    :cond_3
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist test-api engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;

    .line 585
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    .line 587
    .local v0, "entry":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;
    if-eqz v0, :cond_0

    .line 589
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v1

    return-object v1

    .line 592
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist test-api engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;

    .line 597
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    .line 599
    .local v0, "entry":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;
    if-eqz v0, :cond_0

    .line 601
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getDate()Ljava/util/Date;

    move-result-object v1

    return-object v1

    .line 604
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist test-api engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 612
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    .line 614
    .local v0, "entry":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 619
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getObject([C)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Key;

    return-object v1

    .line 616
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist test-api engineIsCertificateEntry(Ljava/lang/String;)Z
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;

    .line 625
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    .line 627
    .local v0, "entry":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 629
    return v2

    .line 632
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist test-api engineIsKeyEntry(Ljava/lang/String;)Z
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;

    .line 638
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    .line 640
    .local v0, "entry":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 642
    return v2

    .line 645
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist test-api engineLoad(Ljava/io/InputStream;[C)V
    .locals 16
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 806
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->clear()V

    .line 808
    if-nez v1, :cond_0

    .line 810
    return-void

    .line 813
    :cond_0
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 814
    .local v3, "dIn":Ljava/io/DataInputStream;
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 816
    .local v4, "version":I
    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    .line 818
    if-eqz v4, :cond_2

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1

    goto :goto_0

    .line 820
    :cond_1
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Wrong version of key store."

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 824
    :cond_2
    :goto_0
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 825
    .local v6, "saltLength":I
    if-lez v6, :cond_6

    .line 830
    new-array v7, v6, [B

    .line 832
    .local v7, "salt":[B
    invoke-virtual {v3, v7}, Ljava/io/DataInputStream;->readFully([B)V

    .line 834
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 839
    .local v8, "iterationCount":I
    new-instance v9, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;

    new-instance v10, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v10}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v9, v10}, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    .line 840
    .local v9, "hMac":Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;
    if-eqz v2, :cond_5

    array-length v10, v2

    if-eqz v10, :cond_5

    .line 842
    invoke-static/range {p2 .. p2}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS12PasswordToBytes([C)[B

    move-result-object v10

    .line 844
    .local v10, "passKey":[B
    new-instance v11, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    new-instance v12, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v12}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v11, v12}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    .line 845
    .local v11, "pbeGen":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    invoke-virtual {v11, v10, v7, v8}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 849
    if-eq v4, v5, :cond_3

    .line 851
    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->getMacSize()I

    move-result v5

    invoke-virtual {v11, v5}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedMacParameters(I)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v5

    .local v5, "macParams":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    goto :goto_1

    .line 855
    .end local v5    # "macParams":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    :cond_3
    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->getMacSize()I

    move-result v5

    mul-int/lit8 v5, v5, 0x8

    invoke-virtual {v11, v5}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedMacParameters(I)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v5

    .line 858
    .restart local v5    # "macParams":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    :goto_1
    const/4 v12, 0x0

    invoke-static {v10, v12}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 860
    invoke-virtual {v9, v5}, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->init(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 861
    new-instance v13, Lcom/android/internal/org/bouncycastle/crypto/io/MacInputStream;

    invoke-direct {v13, v3, v9}, Lcom/android/internal/org/bouncycastle/crypto/io/MacInputStream;-><init>(Ljava/io/InputStream;Lcom/android/internal/org/bouncycastle/crypto/Mac;)V

    .line 863
    .local v13, "mIn":Lcom/android/internal/org/bouncycastle/crypto/io/MacInputStream;
    invoke-virtual {v0, v13}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->loadStore(Ljava/io/InputStream;)V

    .line 866
    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->getMacSize()I

    move-result v14

    new-array v14, v14, [B

    .line 867
    .local v14, "mac":[B
    invoke-virtual {v9, v14, v12}, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->doFinal([BI)I

    .line 871
    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->getMacSize()I

    move-result v12

    new-array v12, v12, [B

    .line 872
    .local v12, "oldMac":[B
    invoke-virtual {v3, v12}, Ljava/io/DataInputStream;->readFully([B)V

    .line 874
    invoke-static {v14, v12}, Lcom/android/internal/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 879
    .end local v5    # "macParams":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .end local v10    # "passKey":[B
    .end local v11    # "pbeGen":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    .end local v12    # "oldMac":[B
    .end local v13    # "mIn":Lcom/android/internal/org/bouncycastle/crypto/io/MacInputStream;
    .end local v14    # "mac":[B
    goto :goto_2

    .line 876
    .restart local v5    # "macParams":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .restart local v10    # "passKey":[B
    .restart local v11    # "pbeGen":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    .restart local v12    # "oldMac":[B
    .restart local v13    # "mIn":Lcom/android/internal/org/bouncycastle/crypto/io/MacInputStream;
    .restart local v14    # "mac":[B
    :cond_4
    iget-object v15, v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    invoke-virtual {v15}, Ljava/util/Hashtable;->clear()V

    .line 877
    new-instance v15, Ljava/io/IOException;

    const-string v1, "KeyStore integrity check failed."

    invoke-direct {v15, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 882
    .end local v5    # "macParams":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .end local v10    # "passKey":[B
    .end local v11    # "pbeGen":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    .end local v12    # "oldMac":[B
    .end local v13    # "mIn":Lcom/android/internal/org/bouncycastle/crypto/io/MacInputStream;
    .end local v14    # "mac":[B
    :cond_5
    invoke-virtual {v0, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->loadStore(Ljava/io/InputStream;)V

    .line 886
    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->getMacSize()I

    move-result v1

    new-array v1, v1, [B

    .line 887
    .local v1, "oldMac":[B
    invoke-virtual {v3, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 889
    .end local v1    # "oldMac":[B
    :goto_2
    return-void

    .line 827
    .end local v7    # "salt":[B
    .end local v8    # "iterationCount":I
    .end local v9    # "hMac":Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;
    :cond_6
    new-instance v1, Ljava/io/IOException;

    const-string v5, "Invalid salt detected"

    invoke-direct {v1, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api engineProbe(Ljava/io/InputStream;)Z
    .locals 7
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 944
    if-eqz p1, :cond_2

    .line 947
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 948
    .local v0, "dIn":Ljava/io/DataInputStream;
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 950
    .local v1, "version":I
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_0

    .line 951
    if-eqz v1, :cond_0

    if-eq v1, v4, :cond_0

    .line 952
    return v3

    .line 955
    :cond_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    new-array v2, v2, [B

    .line 957
    .local v2, "salt":[B
    array-length v5, v2

    const/16 v6, 0x14

    if-eq v5, v6, :cond_1

    .line 958
    return v3

    .line 961
    :cond_1
    return v4

    .line 945
    .end local v0    # "dIn":Ljava/io/DataInputStream;
    .end local v1    # "version":I
    .end local v2    # "salt":[B
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "input stream must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "cert"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 653
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    .line 655
    .local v0, "entry":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 657
    :cond_0
    new-instance v1, Ljava/security/KeyStoreException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "key store already has a key entry with alias "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 660
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    new-instance v2, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;Ljava/security/cert/Certificate;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    return-void
.end method

.method public whitelist test-api engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .locals 8
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "password"    # [C
    .param p4, "chain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 679
    instance-of v0, p2, Ljava/security/PrivateKey;

    if-eqz v0, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    .line 681
    :cond_0
    new-instance v0, Ljava/security/KeyStoreException;

    const-string/jumbo v1, "no certificate chain for private key"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 686
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    new-instance v7, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    invoke-virtual {v0, p1, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 691
    nop

    .line 692
    return-void

    .line 688
    :catch_0
    move-exception v0

    .line 690
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BCKeyStoreException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BCKeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public whitelist test-api engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "chain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 669
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    return-void
.end method

.method public whitelist test-api engineSize()I
    .locals 1

    .line 696
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    return v0
.end method

.method public whitelist test-api engineStore(Ljava/io/OutputStream;[C)V
    .locals 10
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 895
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 896
    .local v0, "dOut":Ljava/io/DataOutputStream;
    const/16 v1, 0x14

    new-array v1, v1, [B

    .line 897
    .local v1, "salt":[B
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextInt()I

    move-result v2

    and-int/lit16 v2, v2, 0x3ff

    add-int/lit16 v2, v2, 0x400

    .line 899
    .local v2, "iterationCount":I
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v3, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 901
    iget v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->version:I

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 902
    array-length v3, v1

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 903
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 904
    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 906
    new-instance v3, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;

    new-instance v4, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v4}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    .line 907
    .local v3, "hMac":Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;
    new-instance v4, Lcom/android/internal/org/bouncycastle/crypto/io/MacOutputStream;

    invoke-direct {v4, v3}, Lcom/android/internal/org/bouncycastle/crypto/io/MacOutputStream;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Mac;)V

    .line 908
    .local v4, "mOut":Lcom/android/internal/org/bouncycastle/crypto/io/MacOutputStream;
    new-instance v5, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    new-instance v6, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v6}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v5, v6}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    .line 909
    .local v5, "pbeGen":Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS12PasswordToBytes([C)[B

    move-result-object v6

    .line 911
    .local v6, "passKey":[B
    invoke-virtual {v5, v6, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 913
    iget v7, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->version:I

    const/4 v8, 0x2

    if-ge v7, v8, :cond_0

    .line 915
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->getMacSize()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedMacParameters(I)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->init(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    goto :goto_0

    .line 919
    :cond_0
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->getMacSize()I

    move-result v7

    mul-int/lit8 v7, v7, 0x8

    invoke-virtual {v5, v7}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedMacParameters(I)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->init(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 922
    :goto_0
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v8, v6

    const/4 v9, 0x0

    if-eq v7, v8, :cond_1

    .line 924
    aput-byte v9, v6, v7

    .line 922
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 927
    .end local v7    # "i":I
    :cond_1
    new-instance v7, Lcom/android/internal/org/bouncycastle/util/io/TeeOutputStream;

    invoke-direct {v7, v0, v4}, Lcom/android/internal/org/bouncycastle/util/io/TeeOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    invoke-virtual {p0, v7}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->saveStore(Ljava/io/OutputStream;)V

    .line 929
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->getMacSize()I

    move-result v7

    new-array v7, v7, [B

    .line 931
    .local v7, "mac":[B
    invoke-virtual {v3, v7, v9}, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;->doFinal([BI)I

    .line 933
    invoke-virtual {v0, v7}, Ljava/io/DataOutputStream;->write([B)V

    .line 935
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 936
    return-void
.end method

.method protected blacklist loadStore(Ljava/io/InputStream;)V
    .locals 18
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 703
    move-object/from16 v11, p0

    new-instance v0, Ljava/io/DataInputStream;

    move-object/from16 v12, p1

    invoke-direct {v0, v12}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v13, v0

    .line 704
    .local v13, "dIn":Ljava/io/DataInputStream;
    invoke-virtual {v13}, Ljava/io/DataInputStream;->read()I

    move-result v0

    move v14, v0

    .line 706
    .local v14, "type":I
    :goto_0
    if-lez v14, :cond_2

    .line 708
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v15

    .line 709
    .local v15, "alias":Ljava/lang/String;
    new-instance v3, Ljava/util/Date;

    invoke-virtual {v13}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 710
    .local v3, "date":Ljava/util/Date;
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    .line 711
    .local v10, "chainLength":I
    const/4 v0, 0x0

    .line 713
    .local v0, "chain":[Ljava/security/cert/Certificate;
    if-eqz v10, :cond_1

    .line 715
    new-array v0, v10, [Ljava/security/cert/Certificate;

    .line 717
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-eq v1, v10, :cond_0

    .line 719
    invoke-direct {v11, v13}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->decodeCertificate(Ljava/io/DataInputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    aput-object v2, v0, v1

    .line 717
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move-object/from16 v16, v0

    goto :goto_2

    .line 713
    .end local v1    # "i":I
    :cond_1
    move-object/from16 v16, v0

    .line 723
    .end local v0    # "chain":[Ljava/security/cert/Certificate;
    .local v16, "chain":[Ljava/security/cert/Certificate;
    :goto_2
    packed-switch v14, :pswitch_data_0

    .line 742
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unknown object type in store."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 736
    :pswitch_0
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    new-array v7, v0, [B

    .line 738
    .local v7, "b":[B
    invoke-virtual {v13, v7}, Ljava/io/DataInputStream;->readFully([B)V

    .line 739
    iget-object v8, v11, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    new-instance v9, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v15

    move v4, v14

    move-object v5, v7

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;Ljava/util/Date;ILjava/lang/Object;[Ljava/security/cert/Certificate;)V

    invoke-virtual {v8, v15, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    move/from16 v17, v10

    goto :goto_3

    .line 731
    .end local v7    # "b":[B
    :pswitch_1
    invoke-direct {v11, v13}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->decodeKey(Ljava/io/DataInputStream;)Ljava/security/Key;

    move-result-object v0

    .line 732
    .local v0, "key":Ljava/security/Key;
    iget-object v1, v11, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    new-instance v2, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    const/4 v8, 0x2

    move-object v4, v2

    move-object/from16 v5, p0

    move-object v6, v15

    move-object v7, v3

    move-object v9, v0

    move/from16 v17, v10

    .end local v10    # "chainLength":I
    .local v17, "chainLength":I
    move-object/from16 v10, v16

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;Ljava/util/Date;ILjava/lang/Object;[Ljava/security/cert/Certificate;)V

    invoke-virtual {v1, v15, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    goto :goto_3

    .line 726
    .end local v0    # "key":Ljava/security/Key;
    .end local v17    # "chainLength":I
    .restart local v10    # "chainLength":I
    :pswitch_2
    move/from16 v17, v10

    .end local v10    # "chainLength":I
    .restart local v17    # "chainLength":I
    invoke-direct {v11, v13}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->decodeCertificate(Ljava/io/DataInputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    .line 728
    .local v0, "cert":Ljava/security/cert/Certificate;
    iget-object v1, v11, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    new-instance v2, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    const/4 v8, 0x1

    move-object v4, v2

    move-object/from16 v5, p0

    move-object v6, v15

    move-object v7, v3

    move-object v9, v0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;Ljava/util/Date;ILjava/lang/Object;)V

    invoke-virtual {v1, v15, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    nop

    .line 745
    .end local v0    # "cert":Ljava/security/cert/Certificate;
    :goto_3
    invoke-virtual {v13}, Ljava/io/DataInputStream;->read()I

    move-result v14

    .line 746
    .end local v3    # "date":Ljava/util/Date;
    .end local v15    # "alias":Ljava/lang/String;
    .end local v16    # "chain":[Ljava/security/cert/Certificate;
    .end local v17    # "chainLength":I
    goto/16 :goto_0

    .line 747
    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected blacklist makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;
    .locals 5
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "password"    # [C
    .param p4, "salt"    # [B
    .param p5, "iterationCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 479
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {v0, p3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    .line 480
    .local v0, "pbeSpec":Ljavax/crypto/spec/PBEKeySpec;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->helper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-interface {v1, p1}, Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;->createSecretKeyFactory(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    .line 481
    .local v1, "keyFact":Ljavax/crypto/SecretKeyFactory;
    new-instance v2, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-direct {v2, p4, p5}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 483
    .local v2, "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->helper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-interface {v3, p1}, Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 485
    .local v3, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v1, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v4

    invoke-virtual {v3, p2, v4, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    return-object v3

    .line 489
    .end local v0    # "pbeSpec":Ljavax/crypto/spec/PBEKeySpec;
    .end local v1    # "keyFact":Ljavax/crypto/SecretKeyFactory;
    .end local v2    # "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    .end local v3    # "cipher":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v0

    .line 491
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error initialising store of key store: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected blacklist saveStore(Ljava/io/OutputStream;)V
    .locals 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 753
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 754
    .local v0, "e":Ljava/util/Enumeration;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 756
    .local v1, "dOut":Ljava/io/DataOutputStream;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 758
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;

    .line 760
    .local v2, "entry":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getType()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->write(I)V

    .line 761
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getAlias()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 762
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 764
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v4

    .line 765
    .local v4, "chain":[Ljava/security/cert/Certificate;
    if-nez v4, :cond_0

    .line 767
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_2

    .line 771
    :cond_0
    array-length v3, v4

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 772
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v5, v4

    if-eq v3, v5, :cond_1

    .line 774
    aget-object v5, v4, v3

    invoke-direct {p0, v5, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->encodeCertificate(Ljava/security/cert/Certificate;Ljava/io/DataOutputStream;)V

    .line 772
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 778
    .end local v3    # "i":I
    :cond_1
    :goto_2
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 794
    new-instance v3, Ljava/io/IOException;

    const-string v5, "Unknown object type in store."

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 788
    :pswitch_0
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 790
    .local v3, "b":[B
    array-length v5, v3

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 791
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->write([B)V

    .line 792
    goto :goto_3

    .line 784
    .end local v3    # "b":[B
    :pswitch_1
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/Key;

    invoke-direct {p0, v3, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->encodeKey(Ljava/security/Key;Ljava/io/DataOutputStream;)V

    .line 785
    goto :goto_3

    .line 781
    :pswitch_2
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->getObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/Certificate;

    invoke-direct {p0, v3, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->encodeCertificate(Ljava/security/cert/Certificate;Ljava/io/DataOutputStream;)V

    .line 782
    nop

    .line 796
    .end local v2    # "entry":Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;
    .end local v4    # "chain":[Ljava/security/cert/Certificate;
    :goto_3
    goto :goto_0

    .line 798
    :cond_2
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 799
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist setRandom(Ljava/security/SecureRandom;)V
    .locals 0
    .param p1, "rand"    # Ljava/security/SecureRandom;

    .line 498
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->random:Ljava/security/SecureRandom;

    .line 499
    return-void
.end method
