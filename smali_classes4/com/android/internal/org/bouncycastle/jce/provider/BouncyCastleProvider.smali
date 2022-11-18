.class public final Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;
.super Ljava/security/Provider;
.source "BouncyCastleProvider.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;


# static fields
.field private static final blacklist ASYMMETRIC_CIPHERS:[Ljava/lang/String;

.field private static final blacklist ASYMMETRIC_GENERIC:[Ljava/lang/String;

.field private static final blacklist ASYMMETRIC_PACKAGE:Ljava/lang/String; = "com.android.internal.org.bouncycastle.jcajce.provider.asymmetric."

.field public static final blacklist CONFIGURATION:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

.field private static final blacklist DIGESTS:[Ljava/lang/String;

.field private static final blacklist DIGEST_PACKAGE:Ljava/lang/String; = "com.android.internal.org.bouncycastle.jcajce.provider.digest."

.field private static final blacklist KEYSTORES:[Ljava/lang/String;

.field private static final blacklist KEYSTORE_PACKAGE:Ljava/lang/String; = "com.android.internal.org.bouncycastle.jcajce.provider.keystore."

.field public static final blacklist PROVIDER_NAME:Ljava/lang/String; = "BC"

.field private static final blacklist SYMMETRIC_CIPHERS:[Ljava/lang/String;

.field private static final blacklist SYMMETRIC_GENERIC:[Ljava/lang/String;

.field private static final blacklist SYMMETRIC_MACS:[Ljava/lang/String;

.field private static final blacklist SYMMETRIC_PACKAGE:Ljava/lang/String; = "com.android.internal.org.bouncycastle.jcajce.provider.symmetric."

.field private static blacklist info:Ljava/lang/String;

.field private static final blacklist keyInfoConverters:Ljava/util/Map;

.field private static final blacklist revChkClass:Ljava/lang/Class;


# direct methods
.method static bridge synthetic blacklist -$$Nest$msetup(Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->setup()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 8

    .line 67
    const-string v0, "BouncyCastle Security Provider v1.68"

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->info:Ljava/lang/String;

    .line 71
    new-instance v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->keyInfoConverters:Ljava/util/Map;

    .line 75
    const-class v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;

    const-string/jumbo v1, "java.security.cert.PKIXRevocationChecker"

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/ClassUtil;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->revChkClass:Ljava/lang/Class;

    .line 82
    const-string v0, "PBEPBKDF2"

    const-string v1, "PBEPKCS12"

    const-string v2, "PBES2AlgorithmParameters"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->SYMMETRIC_GENERIC:[Ljava/lang/String;

    .line 89
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->SYMMETRIC_MACS:[Ljava/lang/String;

    .line 95
    const-string v1, "AES"

    const-string v2, "ARC4"

    const-string v3, "Blowfish"

    const-string v4, "DES"

    const-string v5, "DESede"

    const-string v6, "RC2"

    const-string v7, "Twofish"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->SYMMETRIC_CIPHERS:[Ljava/lang/String;

    .line 112
    const-string v0, "X509"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->ASYMMETRIC_GENERIC:[Ljava/lang/String;

    .line 119
    const-string v0, "DSA"

    const-string v1, "DH"

    const-string v2, "EC"

    const-string v3, "RSA"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->ASYMMETRIC_CIPHERS:[Ljava/lang/String;

    .line 130
    const-string v1, "MD5"

    const-string v2, "SHA1"

    const-string v3, "SHA224"

    const-string v4, "SHA256"

    const-string v5, "SHA384"

    const-string v6, "SHA512"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->DIGESTS:[Ljava/lang/String;

    .line 143
    const-string v0, "BC"

    const-string v1, "BCFKS"

    const-string v2, "PKCS12"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->KEYSTORES:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 4

    .line 165
    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->info:Ljava/lang/String;

    const-string v1, "BC"

    const-wide v2, 0x3ffae147ae147ae1L    # 1.68

    invoke-direct {p0, v1, v2, v3, v0}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 167
    new-instance v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider$1;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider$1;-><init>(Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 175
    return-void
.end method

.method private static blacklist getAsymmetricKeyInfoConverter(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;
    .locals 2
    .param p0, "algorithm"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 366
    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->keyInfoConverters:Ljava/util/Map;

    monitor-enter v0

    .line 368
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;

    monitor-exit v0

    return-object v1

    .line 369
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static blacklist getPrivateKey(Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;
    .locals 3
    .param p0, "privateKeyInfo"    # Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 407
    nop

    .line 409
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    .line 408
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 411
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getEncoded()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 410
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    return-object v0

    .line 416
    :catch_0
    move-exception v0

    .line 417
    .local v0, "ex":Ljava/security/spec/InvalidKeySpecException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 412
    .end local v0    # "ex":Ljava/security/spec/InvalidKeySpecException;
    :catch_1
    move-exception v0

    .line 415
    .local v0, "ex":Ljava/security/NoSuchAlgorithmException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist getPublicKey(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;
    .locals 3
    .param p0, "publicKeyInfo"    # Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 377
    nop

    .line 379
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithmId()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    .line 378
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    .line 381
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getEncoded()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 380
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    return-object v0

    .line 386
    :catch_0
    move-exception v0

    .line 387
    .local v0, "ex":Ljava/security/spec/InvalidKeySpecException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 382
    .end local v0    # "ex":Ljava/security/spec/InvalidKeySpecException;
    :catch_1
    move-exception v0

    .line 385
    .local v0, "ex":Ljava/security/NoSuchAlgorithmException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "names"    # [Ljava/lang/String;

    .line 268
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-eq v0, v1, :cond_1

    .line 270
    const-class v1, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p2, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "$Mappings"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/ClassUtil;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 272
    .local v1, "clazz":Ljava/lang/Class;
    if-eqz v1, :cond_0

    .line 276
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/jcajce/provider/util/AlgorithmProvider;

    invoke-virtual {v2, p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/util/AlgorithmProvider;->configure(Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    goto :goto_1

    .line 278
    :catch_0
    move-exception v2

    .line 280
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/InternalError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot create instance of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "$Mappings : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 268
    .end local v1    # "clazz":Ljava/lang/Class;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 285
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private blacklist setup()V
    .locals 2

    .line 179
    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->DIGESTS:[Ljava/lang/String;

    const-string v1, "com.android.internal.org.bouncycastle.jcajce.provider.digest."

    invoke-direct {p0, v1, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V

    .line 181
    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->SYMMETRIC_GENERIC:[Ljava/lang/String;

    const-string v1, "com.android.internal.org.bouncycastle.jcajce.provider.symmetric."

    invoke-direct {p0, v1, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V

    .line 183
    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->SYMMETRIC_MACS:[Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V

    .line 185
    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->SYMMETRIC_CIPHERS:[Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V

    .line 187
    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->ASYMMETRIC_GENERIC:[Ljava/lang/String;

    const-string v1, "com.android.internal.org.bouncycastle.jcajce.provider.asymmetric."

    invoke-direct {p0, v1, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V

    .line 189
    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->ASYMMETRIC_CIPHERS:[Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V

    .line 191
    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->KEYSTORES:[Ljava/lang/String;

    const-string v1, "com.android.internal.org.bouncycastle.jcajce.provider.keystore."

    invoke-direct {p0, v1, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V

    .line 256
    const-string v0, "CertPathValidator.PKIX"

    const-string v1, "com.android.internal.org.bouncycastle.jce.provider.PKIXCertPathValidatorSpi"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string v0, "CertPathBuilder.PKIX"

    const-string v1, "com.android.internal.org.bouncycastle.jce.provider.PKIXCertPathBuilderSpi"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const-string v0, "CertStore.Collection"

    const-string v1, "com.android.internal.org.bouncycastle.jce.provider.CertStoreCollectionSpi"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    return-void
.end method


# virtual methods
.method public blacklist addAlgorithm(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p3, "className"    # Ljava/lang/String;

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".OID."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    return-void
.end method

.method public blacklist addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 322
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    return-void

    .line 324
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duplicate provider key ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist addAttributes(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 351
    .local p2, "attributeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 353
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 354
    .local v1, "attributeName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 355
    .local v2, "attributeKey":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 360
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    .end local v1    # "attributeName":Ljava/lang/String;
    .end local v2    # "attributeKey":Ljava/lang/String;
    goto :goto_0

    .line 357
    .restart local v1    # "attributeName":Ljava/lang/String;
    .restart local v2    # "attributeKey":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "duplicate provider attribute key ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 362
    .end local v0    # "it":Ljava/util/Iterator;
    .end local v1    # "attributeName":Ljava/lang/String;
    .end local v2    # "attributeKey":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public blacklist addKeyInfoConverter(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V
    .locals 2
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "keyInfoConverter"    # Lcom/android/internal/org/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;

    .line 338
    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->keyInfoConverters:Ljava/util/Map;

    monitor-enter v0

    .line 340
    :try_start_0
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    monitor-exit v0

    .line 342
    return-void

    .line 341
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getKeyInfoConverter(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;
    .locals 1
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 346
    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->keyInfoConverters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;

    return-object v0
.end method

.method public blacklist hasAlgorithm(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alg.Alias."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public blacklist setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "parameterName"    # Ljava/lang/String;
    .param p2, "parameter"    # Ljava/lang/Object;

    .line 309
    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    monitor-enter v0

    .line 311
    :try_start_0
    move-object v1, v0

    check-cast v1, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 312
    monitor-exit v0

    .line 313
    return-void

    .line 312
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
