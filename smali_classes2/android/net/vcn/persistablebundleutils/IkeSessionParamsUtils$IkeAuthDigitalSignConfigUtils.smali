.class Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils$IkeAuthDigitalSignConfigUtils;
.super Ljava/lang/Object;
.source "IkeSessionParamsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IkeAuthDigitalSignConfigUtils"
.end annotation


# static fields
.field private static final blacklist END_CERT_KEY:Ljava/lang/String; = "END_CERT_KEY"

.field private static final blacklist INTERMEDIATE_CERTS_KEY:Ljava/lang/String; = "INTERMEDIATE_CERTS_KEY"

.field private static final blacklist PRIVATE_KEY_KEY:Ljava/lang/String; = "PRIVATE_KEY_KEY"

.field private static final blacklist TRUST_CERT_KEY:Ljava/lang/String; = "TRUST_CERT_KEY"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist setBuilderByReadingPersistableBundle(Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;Landroid/net/ipsec/ike/IkeSessionParams$Builder;)V
    .locals 11
    .param p0, "localAuthBundle"    # Landroid/os/PersistableBundle;
    .param p1, "remoteAuthBundle"    # Landroid/os/PersistableBundle;
    .param p2, "builder"    # Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    .line 390
    const-string v0, "localAuthBundle was null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 391
    const-string v0, "remoteAuthBundle was null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 394
    nop

    .line 395
    const-string v0, "END_CERT_KEY"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 396
    .local v0, "endCertBundle":Landroid/os/PersistableBundle;
    const-string v1, "End cert was null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 397
    invoke-static {v0}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->toByteArray(Landroid/os/PersistableBundle;)[B

    move-result-object v1

    .line 398
    .local v1, "encodedCert":[B
    invoke-static {v1}, Landroid/net/vcn/persistablebundleutils/CertUtils;->certificateFromByteArray([B)Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 400
    .local v2, "endCert":Ljava/security/cert/X509Certificate;
    nop

    .line 401
    const-string v3, "INTERMEDIATE_CERTS_KEY"

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 402
    .local v3, "certsBundle":Landroid/os/PersistableBundle;
    const-string v4, "Intermediate certs was null"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 403
    new-instance v4, Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils$IkeAuthDigitalSignConfigUtils$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils$IkeAuthDigitalSignConfigUtils$$ExternalSyntheticLambda0;-><init>()V

    .line 404
    invoke-static {v3, v4}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->toList(Landroid/os/PersistableBundle;Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Deserializer;)Ljava/util/List;

    move-result-object v4

    .line 405
    .local v4, "encodedCertList":Ljava/util/List;, "Ljava/util/List<[B>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 406
    .local v5, "certList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 407
    .local v7, "encoded":[B
    invoke-static {v7}, Landroid/net/vcn/persistablebundleutils/CertUtils;->certificateFromByteArray([B)Ljava/security/cert/X509Certificate;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    .end local v7    # "encoded":[B
    goto :goto_0

    .line 410
    :cond_0
    nop

    .line 411
    const-string v6, "PRIVATE_KEY_KEY"

    invoke-virtual {p0, v6}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v6

    .line 412
    .local v6, "privateKeyBundle":Landroid/os/PersistableBundle;
    const-string v7, "PrivateKey bundle was null"

    invoke-static {v6, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 413
    nop

    .line 415
    invoke-static {v6}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->toByteArray(Landroid/os/PersistableBundle;)[B

    move-result-object v7

    .line 414
    invoke-static {v7}, Landroid/net/vcn/persistablebundleutils/CertUtils;->privateKeyFromByteArray([B)Ljava/security/interfaces/RSAPrivateKey;

    move-result-object v7

    .line 418
    .local v7, "privateKey":Ljava/security/PrivateKey;
    nop

    .line 419
    const-string v8, "TRUST_CERT_KEY"

    invoke-virtual {p1, v8}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v8

    .line 421
    .local v8, "trustCertBundle":Landroid/os/PersistableBundle;
    const/4 v9, 0x0

    .line 422
    .local v9, "caCert":Ljava/security/cert/X509Certificate;
    if-eqz v8, :cond_1

    .line 423
    invoke-static {v8}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->toByteArray(Landroid/os/PersistableBundle;)[B

    move-result-object v10

    .line 424
    .local v10, "encodedCaCert":[B
    invoke-static {v10}, Landroid/net/vcn/persistablebundleutils/CertUtils;->certificateFromByteArray([B)Ljava/security/cert/X509Certificate;

    move-result-object v9

    .line 427
    .end local v10    # "encodedCaCert":[B
    :cond_1
    invoke-virtual {p2, v9, v2, v5, v7}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setAuthDigitalSignature(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/util/List;Ljava/security/PrivateKey;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    .line 428
    return-void
.end method

.method public static blacklist toPersistableBundle(Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignLocalConfig;Landroid/os/PersistableBundle;)Landroid/os/PersistableBundle;
    .locals 5
    .param p0, "config"    # Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignLocalConfig;
    .param p1, "result"    # Landroid/os/PersistableBundle;

    .line 343
    :try_start_0
    const-string v0, "END_CERT_KEY"

    .line 346
    invoke-virtual {p0}, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignLocalConfig;->getClientEndCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v1

    .line 345
    invoke-static {v1}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->fromByteArray([B)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 343
    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 348
    invoke-virtual {p0}, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignLocalConfig;->getIntermediateCertificates()Ljava/util/List;

    move-result-object v0

    .line 349
    .local v0, "certList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 350
    .local v1, "encodedCertList":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 351
    .local v3, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    nop

    .end local v3    # "cert":Ljava/security/cert/X509Certificate;
    goto :goto_0

    .line 354
    :cond_0
    new-instance v2, Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils$IkeAuthDigitalSignConfigUtils$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils$IkeAuthDigitalSignConfigUtils$$ExternalSyntheticLambda1;-><init>()V

    .line 355
    invoke-static {v1, v2}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->fromList(Ljava/util/List;Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Serializer;)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 357
    .local v2, "certsBundle":Landroid/os/PersistableBundle;
    const-string v3, "INTERMEDIATE_CERTS_KEY"

    invoke-virtual {p1, v3, v2}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    .end local v0    # "certList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v1    # "encodedCertList":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v2    # "certsBundle":Landroid/os/PersistableBundle;
    nop

    .line 363
    nop

    .line 365
    invoke-virtual {p0}, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignLocalConfig;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->fromByteArray([B)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 363
    const-string v1, "PRIVATE_KEY_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 366
    return-object p1

    .line 358
    :catch_0
    move-exception v0

    .line 359
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Fail to encode certificate"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist toPersistableBundle(Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignRemoteConfig;Landroid/os/PersistableBundle;)Landroid/os/PersistableBundle;
    .locals 3
    .param p0, "config"    # Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignRemoteConfig;
    .param p1, "result"    # Landroid/os/PersistableBundle;

    .line 373
    :try_start_0
    invoke-virtual {p0}, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignRemoteConfig;->getRemoteCaCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 374
    .local v0, "caCert":Ljava/security/cert/X509Certificate;
    if-eqz v0, :cond_0

    .line 375
    const-string v1, "TRUST_CERT_KEY"

    .line 377
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->fromByteArray([B)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 375
    invoke-virtual {p1, v1, v2}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    .end local v0    # "caCert":Ljava/security/cert/X509Certificate;
    :cond_0
    nop

    .line 383
    return-object p1

    .line 379
    :catch_0
    move-exception v0

    .line 380
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Fail to encode the certificate"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
