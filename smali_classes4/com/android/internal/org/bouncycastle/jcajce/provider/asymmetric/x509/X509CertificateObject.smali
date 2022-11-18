.class Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;
.source "X509CertificateObject.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;


# instance fields
.field private blacklist attrCarrier:Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

.field private final blacklist cacheLock:Ljava/lang/Object;

.field private blacklist encoded:[B

.field private volatile blacklist hashValue:I

.field private volatile blacklist hashValueSet:Z

.field private blacklist internalCertificateValue:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;

.field private blacklist issuerValue:Ljavax/security/auth/x500/X500Principal;

.field private blacklist publicKeyValue:Ljava/security/PublicKey;

.field private blacklist subjectValue:Ljavax/security/auth/x500/X500Principal;

.field private blacklist validityValues:[J


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;)V
    .locals 7
    .param p1, "bcHelper"    # Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;
    .param p2, "c"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 91
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->createBasicConstraints(Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;)Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v3

    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->createKeyUsage(Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;)[Z

    move-result-object v4

    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->createSigAlgName(Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->createSigAlgParams(Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;)[B

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;[ZLjava/lang/String;[B)V

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->cacheLock:Ljava/lang/Object;

    .line 86
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->attrCarrier:Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 92
    return-void
.end method

.method private static blacklist createBasicConstraints(Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;)Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;
    .locals 4
    .param p0, "c"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 350
    :try_start_0
    const-string v0, "2.5.29.19"

    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->getExtensionOctets(Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;Ljava/lang/String;)[B

    move-result-object v0

    .line 351
    .local v0, "extOctets":[B
    if-nez v0, :cond_0

    .line 353
    const/4 v1, 0x0

    return-object v1

    .line 356
    :cond_0
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 358
    .end local v0    # "extOctets":[B
    :catch_0
    move-exception v0

    .line 360
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/cert/CertificateParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot construct BasicConstraints: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist createKeyUsage(Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;)[Z
    .locals 9
    .param p0, "c"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 368
    :try_start_0
    const-string v0, "2.5.29.15"

    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->getExtensionOctets(Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;Ljava/lang/String;)[B

    move-result-object v0

    .line 369
    .local v0, "extOctets":[B
    if-nez v0, :cond_0

    .line 371
    const/4 v1, 0x0

    return-object v1

    .line 374
    :cond_0
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    move-result-object v1

    .line 376
    .local v1, "bits":Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v2

    .line 377
    .local v2, "bytes":[B
    array-length v3, v2

    mul-int/lit8 v3, v3, 0x8

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getPadBits()I

    move-result v4

    sub-int/2addr v3, v4

    .line 379
    .local v3, "length":I
    const/16 v4, 0x9

    if-ge v3, v4, :cond_1

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    new-array v4, v4, [Z

    .line 381
    .local v4, "keyUsage":[Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-eq v5, v3, :cond_3

    .line 383
    div-int/lit8 v6, v5, 0x8

    aget-byte v6, v2, v6

    const/16 v7, 0x80

    rem-int/lit8 v8, v5, 0x8

    ushr-int/2addr v7, v8

    and-int/2addr v6, v7

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    aput-boolean v6, v4, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 386
    .end local v5    # "i":I
    :cond_3
    return-object v4

    .line 388
    .end local v0    # "extOctets":[B
    .end local v1    # "bits":Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;
    .end local v2    # "bytes":[B
    .end local v3    # "length":I
    .end local v4    # "keyUsage":[Z
    :catch_0
    move-exception v0

    .line 390
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/cert/CertificateParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot construct KeyUsage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist createSigAlgName(Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;)Ljava/lang/String;
    .locals 4
    .param p0, "c"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 398
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->getSignatureName(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 400
    :catch_0
    move-exception v0

    .line 402
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/cert/CertificateParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot construct SigAlgName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist createSigAlgParams(Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;)[B
    .locals 4
    .param p0, "c"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 410
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    .line 411
    .local v0, "parameters":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    if-nez v0, :cond_0

    .line 413
    const/4 v1, 0x0

    return-object v1

    .line 416
    :cond_0
    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 418
    .end local v0    # "parameters":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    :catch_0
    move-exception v0

    .line 420
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/cert/CertificateParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot construct SigAlgParams: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist getInternalCertificate()Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;
    .locals 10

    .line 313
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->cacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 315
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->internalCertificateValue:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;

    if-eqz v1, :cond_0

    .line 317
    monitor-exit v0

    return-object v1

    .line 319
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 324
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->getEncoded()[B

    move-result-object v0
    :try_end_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 329
    .local v0, "encoding":[B
    move-object v1, v0

    goto :goto_0

    .line 326
    .end local v0    # "encoding":[B
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    const/4 v1, 0x0

    .line 331
    .end local v0    # "e":Ljava/security/cert/CertificateEncodingException;
    .local v1, "encoding":[B
    :goto_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->bcHelper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->basicConstraints:Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->keyUsage:[Z

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->sigAlgName:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->sigAlgParams:[B

    move-object v2, v0

    move-object v9, v1

    invoke-direct/range {v2 .. v9}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;[ZLjava/lang/String;[B[B)V

    .line 334
    .local v2, "temp":Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->cacheLock:Ljava/lang/Object;

    monitor-enter v3

    .line 336
    :try_start_2
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->internalCertificateValue:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;

    if-nez v0, :cond_1

    .line 338
    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->internalCertificateValue:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->internalCertificateValue:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;

    monitor-exit v3

    return-object v0

    .line 342
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 319
    .end local v1    # "encoding":[B
    .end local v2    # "temp":Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method


# virtual methods
.method public whitelist test-api checkValidity(Ljava/util/Date;)V
    .locals 6
    .param p1, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .line 96
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 97
    .local v0, "checkTime":J
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->getValidityValues()[J

    move-result-object v2

    .line 99
    .local v2, "validityValues":[J
    const/4 v3, 0x1

    aget-wide v3, v2, v3

    cmp-long v3, v0, v3

    if-gtz v3, :cond_1

    .line 103
    const/4 v3, 0x0

    aget-wide v3, v2, v3

    cmp-long v3, v0, v3

    if-ltz v3, :cond_0

    .line 107
    return-void

    .line 105
    :cond_0
    new-instance v3, Ljava/security/cert/CertificateNotYetValidException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "certificate not valid till "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getStartDate()Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;->getTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 101
    :cond_1
    new-instance v3, Ljava/security/cert/CertificateExpiredException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "certificate expired on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getEndDate()Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;->getTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateExpiredException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 233
    if-ne p1, p0, :cond_0

    .line 235
    const/4 v0, 0x1

    return v0

    .line 238
    :cond_0
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;

    if-eqz v0, :cond_3

    .line 240
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;

    .line 242
    .local v0, "otherBC":Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->hashValueSet:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->hashValueSet:Z

    if-eqz v1, :cond_1

    .line 244
    iget v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->hashValue:I

    iget v3, v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->hashValue:I

    if-eq v1, v3, :cond_3

    .line 246
    return v2

    .line 249
    :cond_1
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->internalCertificateValue:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->internalCertificateValue:Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;

    if-nez v1, :cond_3

    .line 251
    :cond_2
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getSignature()Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    move-result-object v1

    .line 252
    .local v1, "signature":Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;
    if-eqz v1, :cond_3

    iget-object v3, v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getSignature()Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 254
    return v2

    .line 259
    .end local v0    # "otherBC":Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;
    .end local v1    # "signature":Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->getInternalCertificate()Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist getBagAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .locals 1
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 303
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->attrCarrier:Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    invoke-interface {v0, p1}, Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getBagAttributeKeys()Ljava/util/Enumeration;
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->attrCarrier:Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getEncoded()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->encoded:[B

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->encoded:[B

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->encoded:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 224
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->cacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->issuerValue:Ljavax/security/auth/x500/X500Principal;

    if-eqz v1, :cond_0

    .line 115
    monitor-exit v0

    return-object v1

    .line 117
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 119
    invoke-super {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    .line 121
    .local v1, "temp":Ljavax/security/auth/x500/X500Principal;
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->cacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 123
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->issuerValue:Ljavax/security/auth/x500/X500Principal;

    if-nez v0, :cond_1

    .line 125
    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->issuerValue:Ljavax/security/auth/x500/X500Principal;

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->issuerValue:Ljavax/security/auth/x500/X500Principal;

    monitor-exit v2

    return-object v0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 117
    .end local v1    # "temp":Ljavax/security/auth/x500/X500Principal;
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public whitelist test-api getPublicKey()Ljava/security/PublicKey;
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->cacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 137
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->publicKeyValue:Ljava/security/PublicKey;

    if-eqz v1, :cond_0

    .line 139
    monitor-exit v0

    return-object v1

    .line 141
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 143
    invoke-super {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    .line 144
    .local v1, "temp":Ljava/security/PublicKey;
    if-nez v1, :cond_1

    .line 146
    const/4 v0, 0x0

    return-object v0

    .line 149
    :cond_1
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->cacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 151
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->publicKeyValue:Ljava/security/PublicKey;

    if-nez v0, :cond_2

    .line 153
    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->publicKeyValue:Ljava/security/PublicKey;

    .line 156
    :cond_2
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->publicKeyValue:Ljava/security/PublicKey;

    monitor-exit v2

    return-object v0

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 141
    .end local v1    # "temp":Ljava/security/PublicKey;
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public whitelist test-api getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->cacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 164
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->subjectValue:Ljavax/security/auth/x500/X500Principal;

    if-eqz v1, :cond_0

    .line 166
    monitor-exit v0

    return-object v1

    .line 168
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 170
    invoke-super {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    .line 172
    .local v1, "temp":Ljavax/security/auth/x500/X500Principal;
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->cacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 174
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->subjectValue:Ljavax/security/auth/x500/X500Principal;

    if-nez v0, :cond_1

    .line 176
    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->subjectValue:Ljavax/security/auth/x500/X500Principal;

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->subjectValue:Ljavax/security/auth/x500/X500Principal;

    monitor-exit v2

    return-object v0

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 168
    .end local v1    # "temp":Ljavax/security/auth/x500/X500Principal;
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public blacklist getValidityValues()[J
    .locals 4

    .line 185
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->cacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 187
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->validityValues:[J

    if-eqz v1, :cond_0

    .line 189
    monitor-exit v0

    return-object v1

    .line 191
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 193
    const/4 v0, 0x2

    new-array v0, v0, [J

    const/4 v1, 0x0

    .line 195
    invoke-super {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getNotBefore()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    .line 196
    invoke-super {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getNotAfter()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    aput-wide v2, v0, v1

    move-object v1, v0

    .line 199
    .local v1, "temp":[J
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->cacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 201
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->validityValues:[J

    if-nez v0, :cond_1

    .line 203
    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->validityValues:[J

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->validityValues:[J

    monitor-exit v2

    return-object v0

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 191
    .end local v1    # "temp":[J
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 264
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->hashValueSet:Z

    if-nez v0, :cond_0

    .line 266
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->getInternalCertificate()Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->hashValue:I

    .line 267
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->hashValueSet:Z

    .line 270
    :cond_0
    iget v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->hashValue:I

    return v0
.end method

.method public blacklist originalHashCode()I
    .locals 4

    .line 282
    const/4 v0, 0x0

    .line 283
    .local v0, "hashCode":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->getInternalCertificate()Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;->getEncoded()[B

    move-result-object v1

    .line 284
    .local v1, "certData":[B
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 286
    aget-byte v3, v1, v2
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    mul-int/2addr v3, v2

    add-int/2addr v0, v3

    .line 284
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 288
    .end local v2    # "i":I
    :cond_0
    return v0

    .line 290
    .end local v0    # "hashCode":I
    .end local v1    # "certData":[B
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setBagAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "attribute"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 298
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateObject;->attrCarrier:Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 299
    return-void
.end method
