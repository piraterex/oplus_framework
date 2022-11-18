.class Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;
.super Ljava/lang/Object;
.source "CertPathValidatorUtilities.java"


# static fields
.field protected static final blacklist ANY_POLICY:Ljava/lang/String; = "2.5.29.32.0"

.field protected static final blacklist AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

.field protected static final blacklist BASIC_CONSTRAINTS:Ljava/lang/String;

.field protected static final blacklist CERTIFICATE_POLICIES:Ljava/lang/String;

.field protected static final blacklist CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

.field protected static final blacklist CRL_NUMBER:Ljava/lang/String;

.field protected static final blacklist CRL_SIGN:I = 0x6

.field protected static final blacklist DELTA_CRL_INDICATOR:Ljava/lang/String;

.field protected static final blacklist FRESHEST_CRL:Ljava/lang/String;

.field protected static final blacklist INHIBIT_ANY_POLICY:Ljava/lang/String;

.field protected static final blacklist ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

.field protected static final blacklist KEY_CERT_SIGN:I = 0x5

.field protected static final blacklist KEY_USAGE:Ljava/lang/String;

.field protected static final blacklist NAME_CONSTRAINTS:Ljava/lang/String;

.field protected static final blacklist POLICY_CONSTRAINTS:Ljava/lang/String;

.field protected static final blacklist POLICY_MAPPINGS:Ljava/lang/String;

.field protected static final blacklist SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

.field protected static final blacklist crlReasons:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 12

    .line 91
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->certificatePolicies:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    .line 92
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->basicConstraints:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    .line 93
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->policyMappings:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    .line 94
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->subjectAlternativeName:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    .line 95
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->nameConstraints:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    .line 96
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->keyUsage:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->KEY_USAGE:Ljava/lang/String;

    .line 97
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->inhibitAnyPolicy:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    .line 98
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    .line 99
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->deltaCRLIndicator:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    .line 100
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->policyConstraints:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    .line 101
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->freshestCRL:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->FRESHEST_CRL:Ljava/lang/String;

    .line 102
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->cRLDistributionPoints:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    .line 103
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->authorityKeyIdentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

    .line 107
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->cRLNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->CRL_NUMBER:Ljava/lang/String;

    .line 115
    const-string/jumbo v1, "unspecified"

    const-string/jumbo v2, "keyCompromise"

    const-string v3, "cACompromise"

    const-string v4, "affiliationChanged"

    const-string/jumbo v5, "superseded"

    const-string v6, "cessationOfOperation"

    const-string v7, "certificateHold"

    const-string/jumbo v8, "unknown"

    const-string/jumbo v9, "removeFromCRL"

    const-string/jumbo v10, "privilegeWithdrawn"

    const-string v11, "aACompromise"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->crlReasons:[Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist checkCRLsNotEmpty(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;Ljava/util/Set;Ljava/lang/Object;)V
    .locals 7
    .param p0, "params"    # Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    .param p1, "crls"    # Ljava/util/Set;
    .param p2, "cert"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/RecoverableCertPathValidatorException;
        }
    .end annotation

    .line 1416
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1418
    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/x509/X509AttributeCertificate;

    const/4 v1, 0x0

    const-string v2, "\""

    const-string v3, "No CRLs found for issuer \""

    if-eqz v0, :cond_0

    .line 1420
    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/x509/X509AttributeCertificate;

    .line 1422
    .local v0, "aCert":Lcom/android/internal/org/bouncycastle/x509/X509AttributeCertificate;
    new-instance v4, Lcom/android/internal/org/bouncycastle/jce/provider/RecoverableCertPathValidatorException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/x509/X509AttributeCertificate;->getIssuer()Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateIssuer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/x509/AttributeCertificateIssuer;->getPrincipals()[Ljava/security/Principal;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1423
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getIndex()I

    move-result v5

    invoke-direct {v4, v2, v1, v3, v5}, Lcom/android/internal/org/bouncycastle/jce/provider/RecoverableCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 1427
    .end local v0    # "aCert":Lcom/android/internal/org/bouncycastle/x509/X509AttributeCertificate;
    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1429
    .local v0, "xCert":Ljava/security/cert/X509Certificate;
    new-instance v4, Lcom/android/internal/org/bouncycastle/jce/provider/RecoverableCertPathValidatorException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lcom/android/internal/org/bouncycastle/asn1/x500/style/RFC4519Style;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509Certificate;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;->toString(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1430
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getIndex()I

    move-result v5

    invoke-direct {v4, v2, v1, v3, v5}, Lcom/android/internal/org/bouncycastle/jce/provider/RecoverableCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 1433
    .end local v0    # "xCert":Ljava/security/cert/X509Certificate;
    :cond_1
    return-void
.end method

.method protected static blacklist findCertificates(Ljava/util/LinkedHashSet;Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/util/List;)V
    .locals 6
    .param p0, "certs"    # Ljava/util/LinkedHashSet;
    .param p1, "certSelect"    # Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;
    .param p2, "certStores"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 681
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 682
    .local v0, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 684
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 704
    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/security/cert/CertStore;

    .line 707
    .local v2, "certStore":Ljava/security/cert/CertStore;
    :try_start_0
    invoke-static {p1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;->getCertificates(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/security/cert/CertStore;)Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/security/cert/CertStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 712
    nop

    .line 714
    .end local v1    # "obj":Ljava/lang/Object;
    .end local v2    # "certStore":Ljava/security/cert/CertStore;
    goto :goto_0

    .line 709
    .restart local v1    # "obj":Ljava/lang/Object;
    .restart local v2    # "certStore":Ljava/security/cert/CertStore;
    :catch_0
    move-exception v3

    .line 711
    .local v3, "e":Ljava/security/cert/CertStoreException;
    new-instance v4, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v5, "Problem while picking certificates from certificate store."

    invoke-direct {v4, v5, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 715
    .end local v1    # "obj":Ljava/lang/Object;
    .end local v2    # "certStore":Ljava/security/cert/CertStore;
    .end local v3    # "e":Ljava/security/cert/CertStoreException;
    :cond_0
    return-void
.end method

.method static blacklist findIssuerCerts(Ljava/security/cert/X509Certificate;Ljava/util/List;Ljava/util/List;)Ljava/util/Collection;
    .locals 6
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/List<",
            "Ljava/security/cert/CertStore;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStore;",
            ">;)",
            "Ljava/util/Collection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 1352
    .local p1, "certStores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    .local p2, "pkixCertStores":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStore;>;"
    new-instance v0, Ljava/security/cert/X509CertSelector;

    invoke-direct {v0}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 1356
    .local v0, "selector":Ljava/security/cert/X509CertSelector;
    :try_start_0
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509Certificate;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/cert/X509CertSelector;->setSubject([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1362
    nop

    .line 1366
    :try_start_1
    sget-object v1, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v1

    .line 1367
    .local v1, "akiExtensionValue":[B
    if-eqz v1, :cond_0

    .line 1369
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    .line 1370
    .local v2, "aki":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getKeyIdentifier()[B

    move-result-object v3

    .line 1371
    .local v3, "authorityKeyIdentifier":[B
    if-eqz v3, :cond_0

    .line 1373
    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v4, v3}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;->getEncoded()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/security/cert/X509CertSelector;->setSubjectKeyIdentifier([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1380
    .end local v1    # "akiExtensionValue":[B
    .end local v2    # "aki":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    .end local v3    # "authorityKeyIdentifier":[B
    :cond_0
    goto :goto_0

    .line 1377
    :catch_0
    move-exception v1

    .line 1382
    :goto_0
    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;-><init>(Ljava/security/cert/CertSelector;)V

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;->build()Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v1

    .line 1383
    .local v1, "certSelect":Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1387
    .local v2, "certs":Ljava/util/LinkedHashSet;
    :try_start_2
    invoke-static {v2, v1, p1}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Ljava/util/LinkedHashSet;Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/util/List;)V

    .line 1388
    invoke-static {v2, v1, p2}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Ljava/util/LinkedHashSet;Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/util/List;)V
    :try_end_2
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1393
    nop

    .line 1397
    return-object v2

    .line 1390
    :catch_1
    move-exception v3

    .line 1392
    .local v3, "e":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v4, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v5, "Issuer certificate cannot be searched."

    invoke-direct {v4, v5, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 1358
    .end local v1    # "certSelect":Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;
    .end local v2    # "certs":Ljava/util/LinkedHashSet;
    .end local v3    # "e":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    :catch_2
    move-exception v1

    .line 1360
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v3, "Subject criteria for certificate selector to find issuer certificate could not be set."

    invoke-direct {v2, v3, v1}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method static blacklist findTargets(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;)Ljava/util/Collection;
    .locals 6
    .param p0, "paramsPKIX"    # Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathBuilderException;
        }
    .end annotation

    .line 130
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v0

    .line 131
    .local v0, "baseParams":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->getTargetConstraints()Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v1

    .line 132
    .local v1, "certSelect":Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 136
    .local v2, "targets":Ljava/util/LinkedHashSet;
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCertificateStores()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Ljava/util/LinkedHashSet;Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/util/List;)V

    .line 137
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCertStores()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Ljava/util/LinkedHashSet;Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/util/List;)V
    :try_end_0
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    nop

    .line 144
    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 146
    return-object v2

    .line 149
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v3

    .line 150
    .local v3, "target":Ljava/security/cert/Certificate;
    if-eqz v3, :cond_1

    .line 155
    invoke-static {v3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    return-object v4

    .line 152
    :cond_1
    new-instance v4, Ljava/security/cert/CertPathBuilderException;

    const-string v5, "No certificate found matching targetConstraints."

    invoke-direct {v4, v5}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 139
    .end local v3    # "target":Ljava/security/cert/Certificate;
    :catch_0
    move-exception v3

    .line 141
    .local v3, "e":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v4, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathBuilderException;

    const-string v5, "Error finding target certificate."

    invoke-direct {v4, v5, v3}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method protected static blacklist findTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Set;)Ljava/security/cert/TrustAnchor;
    .locals 1
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .param p1, "trustAnchors"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 175
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Ljava/security/cert/TrustAnchor;

    move-result-object v0

    return-object v0
.end method

.method protected static blacklist findTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Ljava/security/cert/TrustAnchor;
    .locals 9
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .param p1, "trustAnchors"    # Ljava/util/Set;
    .param p2, "sigProvider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 198
    const/4 v0, 0x0

    .line 199
    .local v0, "trust":Ljava/security/cert/TrustAnchor;
    const/4 v1, 0x0

    .line 200
    .local v1, "trustPublicKey":Ljava/security/PublicKey;
    const/4 v2, 0x0

    .line 202
    .local v2, "invalidKeyEx":Ljava/lang/Exception;
    new-instance v3, Ljava/security/cert/X509CertSelector;

    invoke-direct {v3}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 204
    .local v3, "certSelectX509":Ljava/security/cert/X509CertSelector;
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    .line 205
    .local v4, "certIssuerPrincipal":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {v3, v4}, Ljava/security/cert/X509CertSelector;->setSubject(Ljavax/security/auth/x500/X500Principal;)V

    .line 207
    const/4 v5, 0x0

    .line 209
    .local v5, "certIssuerName":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 210
    .local v6, "iter":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    if-nez v0, :cond_6

    .line 212
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/security/cert/TrustAnchor;

    .line 213
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 215
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/security/cert/X509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 217
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v7

    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    goto :goto_2

    .line 221
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 224
    :cond_2
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getCA()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 225
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 226
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 228
    if-nez v5, :cond_3

    .line 230
    invoke-virtual {v4}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v5

    .line 235
    :cond_3
    :try_start_0
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getCA()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v7

    .line 237
    .local v7, "caName":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    invoke-virtual {v5, v7}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 239
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v8

    goto :goto_1

    .line 243
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 246
    .end local v7    # "caName":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    :catch_0
    move-exception v7

    .line 248
    .local v7, "ex":Ljava/lang/IllegalArgumentException;
    const/4 v0, 0x0

    .line 249
    .end local v7    # "ex":Ljava/lang/IllegalArgumentException;
    :goto_1
    goto :goto_2

    .line 253
    :cond_5
    const/4 v0, 0x0

    .line 256
    :goto_2
    if-eqz v1, :cond_0

    .line 260
    :try_start_1
    invoke-static {p0, v1, p2}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->verifyX509Certificate(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 262
    :catch_1
    move-exception v7

    .line 264
    .local v7, "ex":Ljava/lang/Exception;
    move-object v2, v7

    .line 265
    const/4 v0, 0x0

    .line 266
    const/4 v1, 0x0

    .line 267
    .end local v7    # "ex":Ljava/lang/Exception;
    :goto_3
    goto :goto_0

    .line 271
    :cond_6
    if-nez v0, :cond_8

    if-nez v2, :cond_7

    goto :goto_4

    .line 273
    :cond_7
    new-instance v7, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v8, "TrustAnchor found but certificate validation failed."

    invoke-direct {v7, v8, v2}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 276
    :cond_8
    :goto_4
    return-object v0
.end method

.method static blacklist getAdditionalStoresFromAltNames([BLjava/util/Map;)Ljava/util/List;
    .locals 6
    .param p0, "issuerAlternativeName"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;",
            "Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStore;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStore;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 302
    .local p1, "altNameCertStoreMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStore;>;"
    if-nez p0, :cond_0

    .line 304
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 307
    :cond_0
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    .line 309
    .local v0, "issuerAltName":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v1

    .line 310
    .local v1, "names":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 312
    .local v2, "stores":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStore;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-eq v3, v4, :cond_2

    .line 314
    aget-object v4, v1, v3

    .line 316
    .local v4, "altName":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStore;

    .line 317
    .local v5, "altStore":Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStore;
    if-eqz v5, :cond_1

    .line 319
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    .end local v4    # "altName":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .end local v5    # "altStore":Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStore;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 323
    .end local v3    # "i":I
    :cond_2
    return-object v2
.end method

.method static blacklist getAdditionalStoresFromCRLDistributionPoint(Lcom/android/internal/org/bouncycastle/asn1/x509/CRLDistPoint;Ljava/util/Map;Ljava/util/Date;Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/util/List;
    .locals 10
    .param p0, "crldp"    # Lcom/android/internal/org/bouncycastle/asn1/x509/CRLDistPoint;
    .param p2, "validDate"    # Ljava/util/Date;
    .param p3, "helper"    # Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/org/bouncycastle/asn1/x509/CRLDistPoint;",
            "Ljava/util/Map<",
            "Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;",
            "Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStore;",
            ">;",
            "Ljava/util/Date;",
            "Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStore;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 721
    .local p1, "namedCRLStoreMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStore;>;"
    if-nez p0, :cond_0

    .line 723
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 729
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/CRLDistPoint;->getDistributionPoints()[Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 734
    .local v0, "dps":[Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    nop

    .line 736
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 738
    .local v1, "stores":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStore;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_3

    .line 740
    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v3

    .line 742
    .local v3, "dpn":Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v4

    if-nez v4, :cond_2

    .line 744
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;->getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v4

    .line 746
    .local v4, "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_2

    .line 748
    aget-object v6, v4, v5

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStore;

    .line 749
    .local v6, "store":Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStore;
    if-eqz v6, :cond_1

    .line 751
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 746
    .end local v6    # "store":Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStore;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 738
    .end local v3    # "dpn":Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;
    .end local v4    # "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .end local v5    # "j":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 758
    .end local v2    # "i":I
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "com.android.internal.org.bouncycastle.x509.enableCRLDP"

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/util/Properties;->isOverrideSet(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 763
    :try_start_1
    const-string v2, "X.509"

    invoke-interface {p3, v2}, Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;->createCertificateFactory(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 768
    .local v2, "certFact":Ljava/security/cert/CertificateFactory;
    nop

    .line 770
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v4, v0

    if-ge v3, v4, :cond_6

    .line 772
    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v4

    .line 774
    .local v4, "dpn":Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v5

    if-nez v5, :cond_5

    .line 776
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;->getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v5

    .line 778
    .local v5, "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_3
    array-length v7, v5

    if-ge v6, v7, :cond_5

    .line 780
    aget-object v7, v5, v3

    .line 781
    .local v7, "name":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v8

    const/4 v9, 0x6

    if-ne v8, v9, :cond_4

    .line 795
    goto :goto_4

    .line 778
    .end local v7    # "name":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 770
    .end local v4    # "dpn":Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;
    .end local v5    # "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .end local v6    # "j":I
    :cond_5
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 765
    .end local v2    # "certFact":Ljava/security/cert/CertificateFactory;
    .end local v3    # "i":I
    :catch_0
    move-exception v2

    .line 767
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot create certificate factory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 807
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_6
    return-object v1

    .line 731
    .end local v0    # "dps":[Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    .end local v1    # "stores":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStore;>;"
    :catch_1
    move-exception v0

    .line 733
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "Distribution points could not be read."

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static blacklist getAlgorithmIdentifier(Ljava/security/PublicKey;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 3
    .param p0, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 371
    :try_start_0
    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 373
    :catch_0
    move-exception v0

    .line 375
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v2, "Subject public key cannot be decoded."

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static blacklist getCRLIssuersFromDistributionPoint(Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/util/Collection;Ljava/security/cert/X509CRLSelector;)V
    .locals 6
    .param p0, "dp"    # Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    .param p1, "issuerPrincipals"    # Ljava/util/Collection;
    .param p2, "selector"    # Ljava/security/cert/X509CRLSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 832
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 834
    .local v0, "issuers":Ljava/util/List;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 836
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v1

    .line 838
    .local v1, "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 840
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 844
    :try_start_0
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 850
    goto :goto_1

    .line 846
    :catch_0
    move-exception v3

    .line 848
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v5, "CRL issuer information from distribution point cannot be decoded."

    invoke-direct {v4, v5, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 838
    .end local v3    # "e":Ljava/io/IOException;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 853
    .end local v1    # "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .end local v2    # "j":I
    :cond_1
    goto :goto_3

    .line 860
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 866
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 868
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 915
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_3
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 916
    .restart local v1    # "it":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 920
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getEncoded()[B

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/security/cert/X509CRLSelector;->addIssuerName([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 926
    goto :goto_4

    .line 922
    :catch_1
    move-exception v2

    .line 924
    .local v2, "ex":Ljava/io/IOException;
    new-instance v3, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "Cannot decode CRL issuer information."

    invoke-direct {v3, v4, v2}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 928
    .end local v2    # "ex":Ljava/io/IOException;
    :cond_4
    return-void

    .line 862
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_5
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "CRL issuer is omitted from distribution point but no distributionPoint field present."

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected static blacklist getCertStatus(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;)V
    .locals 8
    .param p0, "validDate"    # Ljava/util/Date;
    .param p1, "crl"    # Ljava/security/cert/X509CRL;
    .param p2, "cert"    # Ljava/lang/Object;
    .param p3, "certStatus"    # Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 945
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jce/provider/X509CRLObject;->isIndirectCRL(Ljava/security/cert/X509CRL;)Z

    move-result v0
    :try_end_0
    .catch Ljava/security/cert/CRLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 950
    .local v0, "isIndirect":Z
    nop

    .line 953
    if-eqz v0, :cond_3

    .line 955
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getSerialNumber(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/security/cert/X509CRL;->getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;

    move-result-object v1

    .line 957
    .local v1, "crl_entry":Ljava/security/cert/X509CRLEntry;
    if-nez v1, :cond_0

    .line 959
    return-void

    .line 962
    :cond_0
    invoke-virtual {v1}, Ljava/security/cert/X509CRLEntry;->getCertificateIssuer()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    .line 965
    .local v2, "certificateIssuer":Ljavax/security/auth/x500/X500Principal;
    if-nez v2, :cond_1

    .line 967
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v3

    .local v3, "certIssuer":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    goto :goto_0

    .line 971
    .end local v3    # "certIssuer":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    :cond_1
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/jce/provider/PrincipalUtils;->getX500Name(Ljavax/security/auth/x500/X500Principal;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v3

    .line 974
    .restart local v3    # "certIssuer":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    :goto_0
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/jce/provider/PrincipalUtils;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 976
    return-void

    .line 978
    .end local v2    # "certificateIssuer":Ljavax/security/auth/x500/X500Principal;
    .end local v3    # "certIssuer":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    :cond_2
    goto :goto_1

    .line 979
    .end local v1    # "crl_entry":Ljava/security/cert/X509CRLEntry;
    :cond_3
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/jce/provider/PrincipalUtils;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 981
    return-void

    .line 985
    :cond_4
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getSerialNumber(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/security/cert/X509CRL;->getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;

    move-result-object v1

    .line 987
    .restart local v1    # "crl_entry":Ljava/security/cert/X509CRLEntry;
    if-nez v1, :cond_5

    .line 989
    return-void

    .line 993
    :cond_5
    :goto_1
    const/4 v2, 0x0

    .line 994
    .local v2, "reasonCode":Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;
    invoke-virtual {v1}, Ljava/security/cert/X509CRLEntry;->hasExtensions()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 996
    invoke-virtual {v1}, Ljava/security/cert/X509CRLEntry;->hasUnsupportedCriticalExtension()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1003
    :try_start_1
    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->reasonCode:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1004
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v3

    .line 1009
    goto :goto_2

    .line 1006
    :catch_0
    move-exception v3

    .line 1008
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v5, "Reason code CRL entry extension could not be decoded."

    invoke-direct {v4, v5, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 998
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_6
    new-instance v3, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "CRL entry has unsupported critical extensions."

    invoke-direct {v3, v4}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1012
    :cond_7
    :goto_2
    if-nez v2, :cond_8

    .line 1013
    const/4 v3, 0x0

    goto :goto_3

    .line 1014
    :cond_8
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->intValueExact()I

    move-result v3

    :goto_3
    nop

    .line 1017
    .local v3, "reasonCodeValue":I
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/security/cert/X509CRLEntry;->getRevocationDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_9

    if-eqz v3, :cond_9

    const/4 v4, 0x1

    if-eq v3, v4, :cond_9

    const/4 v4, 0x2

    if-eq v3, v4, :cond_9

    const/16 v4, 0xa

    if-ne v3, v4, :cond_a

    .line 1024
    :cond_9
    invoke-virtual {p3, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;->setCertStatus(I)V

    .line 1025
    invoke-virtual {v1}, Ljava/security/cert/X509CRLEntry;->getRevocationDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {p3, v4}, Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;->setRevocationDate(Ljava/util/Date;)V

    .line 1027
    :cond_a
    return-void

    .line 947
    .end local v0    # "isIndirect":Z
    .end local v1    # "crl_entry":Ljava/security/cert/X509CRLEntry;
    .end local v2    # "reasonCode":Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;
    .end local v3    # "reasonCodeValue":I
    :catch_1
    move-exception v0

    .line 949
    .local v0, "exception":Ljava/security/cert/CRLException;
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "Failed check for indirect CRL."

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static blacklist getCompleteCRLs(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;)Ljava/util/Set;
    .locals 4
    .param p0, "params"    # Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    .param p1, "dp"    # Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    .param p2, "cert"    # Ljava/lang/Object;
    .param p3, "paramsPKIX"    # Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .param p4, "validityDate"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;,
            Lcom/android/internal/org/bouncycastle/jce/provider/RecoverableCertPathValidatorException;
        }
    .end annotation

    .line 1196
    new-instance v0, Ljava/security/cert/X509CRLSelector;

    invoke-direct {v0}, Ljava/security/cert/X509CRLSelector;-><init>()V

    .line 1200
    .local v0, "baseCrlSelect":Ljava/security/cert/X509CRLSelector;
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1201
    .local v1, "issuers":Ljava/util/Set;
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/jce/provider/PrincipalUtils;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1203
    invoke-static {p1, v1, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getCRLIssuersFromDistributionPoint(Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/util/Collection;Ljava/security/cert/X509CRLSelector;)V
    :try_end_0
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1208
    .end local v1    # "issuers":Ljava/util/Set;
    nop

    .line 1210
    instance-of v1, p2, Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_0

    .line 1212
    move-object v1, p2

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v1}, Ljava/security/cert/X509CRLSelector;->setCertificateChecking(Ljava/security/cert/X509Certificate;)V

    .line 1215
    :cond_0
    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;-><init>(Ljava/security/cert/CRLSelector;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->setCompleteCRLEnabled(Z)Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;

    move-result-object v1

    .line 1216
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->build()Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;

    move-result-object v1

    .line 1218
    .local v1, "crlSelect":Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;
    invoke-virtual {p3}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCertStores()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p3}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCRLStores()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, p4, v2, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCRLUtil;->findCRLs(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;Ljava/util/Date;Ljava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v2

    .line 1220
    .local v2, "crls":Ljava/util/Set;
    invoke-static {p0, v2, p2}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->checkCRLsNotEmpty(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;Ljava/util/Set;Ljava/lang/Object;)V

    .line 1222
    return-object v2

    .line 1205
    .end local v1    # "crlSelect":Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;
    .end local v2    # "crls":Ljava/util/Set;
    :catch_0
    move-exception v1

    .line 1207
    .local v1, "e":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v2, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v3, "Could not get issuer information from distribution point."

    invoke-direct {v2, v3, v1}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected static blacklist getDeltaCRLs(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/util/List;Ljava/util/List;Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/util/Set;
    .locals 20
    .param p0, "validityDate"    # Ljava/util/Date;
    .param p1, "completeCRL"    # Ljava/security/cert/X509CRL;
    .param p4, "helper"    # Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/security/cert/X509CRL;",
            "Ljava/util/List<",
            "Ljava/security/cert/CertStore;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStore;",
            ">;",
            "Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;",
            ")",
            "Ljava/util/Set;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 1045
    .local p2, "certStores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    .local p3, "pkixCrlStores":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStore;>;"
    move-object/from16 v1, p1

    new-instance v0, Ljava/security/cert/X509CRLSelector;

    invoke-direct {v0}, Ljava/security/cert/X509CRLSelector;-><init>()V

    move-object v2, v0

    .line 1049
    .local v2, "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/internal/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getEncoded()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/security/cert/X509CRLSelector;->addIssuerName([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 1054
    nop

    .line 1056
    const/4 v3, 0x0

    .line 1059
    .local v3, "completeCRLNumber":Ljava/math/BigInteger;
    :try_start_1
    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->CRL_NUMBER:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 1060
    .local v0, "derObject":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    if-eqz v0, :cond_0

    .line 1062
    :try_start_2
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    goto :goto_0

    .line 1065
    .end local v0    # "derObject":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    :catch_0
    move-exception v0

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v11, p4

    move-object/from16 v16, v2

    goto/16 :goto_8

    .line 1069
    :cond_0
    :goto_0
    nop

    .line 1075
    :try_start_3
    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/security/cert/X509CRL;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object v4, v0

    .line 1080
    .local v4, "idp":[B
    nop

    .line 1084
    if-nez v3, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-wide/16 v5, 0x1

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/security/cert/X509CRLSelector;->setMinCRLNumber(Ljava/math/BigInteger;)V

    .line 1086
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;

    invoke-direct {v0, v2}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;-><init>(Ljava/security/cert/CRLSelector;)V

    move-object v5, v0

    .line 1088
    .local v5, "selBuilder":Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;
    invoke-virtual {v5, v4}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->setIssuingDistributionPoint([B)V

    .line 1089
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->setIssuingDistributionPointEnabled(Z)V

    .line 1092
    invoke-virtual {v5, v3}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->setMaxBaseCRLNumber(Ljava/math/BigInteger;)V

    .line 1094
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->build()Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;

    move-result-object v6

    .line 1097
    .local v6, "deltaSelect":Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    invoke-static {v6, v7, v8, v9}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCRLUtil;->findCRLs(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;Ljava/util/Date;Ljava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v10

    .line 1100
    .local v10, "temp":Ljava/util/Set;
    invoke-interface {v10}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "com.android.internal.org.bouncycastle.x509.enableCRLDP"

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Properties;->isOverrideSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1105
    :try_start_4
    const-string v0, "X.509"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object/from16 v11, p4

    :try_start_5
    invoke-interface {v11, v0}, Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;->createCertificateFactory(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 1110
    .local v0, "certFact":Ljava/security/cert/CertificateFactory;
    nop

    .line 1112
    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/CRLDistPoint;

    move-result-object v12

    .line 1113
    .local v12, "id":Lcom/android/internal/org/bouncycastle/asn1/x509/CRLDistPoint;
    invoke-virtual {v12}, Lcom/android/internal/org/bouncycastle/asn1/x509/CRLDistPoint;->getDistributionPoints()[Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;

    move-result-object v13

    .line 1114
    .local v13, "dps":[Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    array-length v15, v13

    if-ge v14, v15, :cond_5

    .line 1116
    aget-object v15, v13, v14

    invoke-virtual {v15}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v15

    .line 1118
    .local v15, "dpn":Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;
    if-eqz v15, :cond_4

    invoke-virtual {v15}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v16

    if-nez v16, :cond_4

    .line 1120
    invoke-virtual {v15}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;->getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v16

    move-object/from16 v17, v0

    .end local v0    # "certFact":Ljava/security/cert/CertificateFactory;
    .local v17, "certFact":Ljava/security/cert/CertificateFactory;
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    .line 1122
    .local v0, "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    const/16 v16, 0x0

    move/from16 v1, v16

    .local v1, "j":I
    :goto_3
    move-object/from16 v16, v2

    .end local v2    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    .local v16, "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 1124
    aget-object v2, v0, v14

    .line 1125
    .local v2, "name":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    move-object/from16 v18, v0

    .end local v0    # "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .local v18, "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v0

    move-object/from16 v19, v2

    .end local v2    # "name":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .local v19, "name":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    const/4 v2, 0x6

    if-ne v0, v2, :cond_2

    .line 1140
    goto :goto_4

    .line 1122
    .end local v19    # "name":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v2, v16

    move-object/from16 v0, v18

    goto :goto_3

    .end local v18    # "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .restart local v0    # "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    :cond_3
    move-object/from16 v18, v0

    .end local v0    # "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .restart local v18    # "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    goto :goto_4

    .line 1118
    .end local v1    # "j":I
    .end local v16    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    .end local v17    # "certFact":Ljava/security/cert/CertificateFactory;
    .end local v18    # "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .local v0, "certFact":Ljava/security/cert/CertificateFactory;
    .local v2, "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    :cond_4
    move-object/from16 v17, v0

    move-object/from16 v16, v2

    .line 1114
    .end local v0    # "certFact":Ljava/security/cert/CertificateFactory;
    .end local v2    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    .end local v15    # "dpn":Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;
    .restart local v16    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    .restart local v17    # "certFact":Ljava/security/cert/CertificateFactory;
    :goto_4
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move-object/from16 v0, v17

    goto :goto_2

    .end local v16    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    .end local v17    # "certFact":Ljava/security/cert/CertificateFactory;
    .restart local v0    # "certFact":Ljava/security/cert/CertificateFactory;
    .restart local v2    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    :cond_5
    move-object/from16 v17, v0

    move-object/from16 v16, v2

    .end local v0    # "certFact":Ljava/security/cert/CertificateFactory;
    .end local v2    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    .restart local v16    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    .restart local v17    # "certFact":Ljava/security/cert/CertificateFactory;
    goto :goto_6

    .line 1107
    .end local v12    # "id":Lcom/android/internal/org/bouncycastle/asn1/x509/CRLDistPoint;
    .end local v13    # "dps":[Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    .end local v14    # "i":I
    .end local v16    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    .end local v17    # "certFact":Ljava/security/cert/CertificateFactory;
    .restart local v2    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    move-object/from16 v11, p4

    :goto_5
    move-object/from16 v16, v2

    .line 1109
    .end local v2    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v16    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "cannot create certificate factory: "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1100
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v16    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    .restart local v2    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    :cond_6
    move-object/from16 v11, p4

    move-object/from16 v16, v2

    .line 1152
    .end local v2    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    .restart local v16    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    :goto_6
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1154
    .local v0, "result":Ljava/util/Set;
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1156
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509CRL;

    .line 1158
    .local v2, "crl":Ljava/security/cert/X509CRL;
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isDeltaCRL(Ljava/security/cert/X509CRL;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1160
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1162
    .end local v2    # "crl":Ljava/security/cert/X509CRL;
    :cond_7
    goto :goto_7

    .line 1164
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_8
    return-object v0

    .line 1077
    .end local v0    # "result":Ljava/util/Set;
    .end local v4    # "idp":[B
    .end local v5    # "selBuilder":Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;
    .end local v6    # "deltaSelect":Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;
    .end local v10    # "temp":Ljava/util/Set;
    .end local v16    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    .local v2, "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    :catch_3
    move-exception v0

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v11, p4

    move-object/from16 v16, v2

    .line 1079
    .end local v2    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v16    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "Issuing distribution point extension value could not be read."

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1065
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v16    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    .restart local v2    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    :catch_4
    move-exception v0

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v11, p4

    move-object/from16 v16, v2

    .line 1067
    .end local v2    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v16    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    :goto_8
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "CRL number extension could not be extracted from CRL."

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1051
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "completeCRLNumber":Ljava/math/BigInteger;
    .end local v16    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    .restart local v2    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    :catch_5
    move-exception v0

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v11, p4

    move-object/from16 v16, v2

    .line 1053
    .end local v2    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    .local v0, "e":Ljava/io/IOException;
    .restart local v16    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "Cannot extract issuer from CRL."

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static blacklist getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2
    .param p0, "ext"    # Ljava/security/cert/X509Extension;
    .param p1, "oid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 348
    invoke-interface {p0, p1}, Ljava/security/cert/X509Extension;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    .line 350
    .local v0, "bytes":[B
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getObject(Ljava/lang/String;[B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method protected static blacklist getNextWorkingKey(Ljava/util/List;ILcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/security/PublicKey;
    .locals 12
    .param p0, "certs"    # Ljava/util/List;
    .param p1, "index"    # I
    .param p2, "helper"    # Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 1297
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    .line 1298
    .local v0, "cert":Ljava/security/cert/Certificate;
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    .line 1299
    .local v1, "pubKey":Ljava/security/PublicKey;
    instance-of v2, v1, Ljava/security/interfaces/DSAPublicKey;

    if-nez v2, :cond_0

    .line 1301
    return-object v1

    .line 1303
    :cond_0
    move-object v2, v1

    check-cast v2, Ljava/security/interfaces/DSAPublicKey;

    .line 1304
    .local v2, "dsaPubKey":Ljava/security/interfaces/DSAPublicKey;
    invoke-interface {v2}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1306
    return-object v2

    .line 1308
    :cond_1
    add-int/lit8 v3, p1, 0x1

    .local v3, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    const-string v5, "DSA parameters cannot be inherited from previous certificate."

    if-ge v3, v4, :cond_4

    .line 1310
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 1311
    .local v4, "parentCert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    .line 1312
    instance-of v6, v1, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v6, :cond_3

    .line 1317
    move-object v5, v1

    check-cast v5, Ljava/security/interfaces/DSAPublicKey;

    .line 1318
    .local v5, "prevDSAPubKey":Ljava/security/interfaces/DSAPublicKey;
    invoke-interface {v5}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v6

    if-nez v6, :cond_2

    .line 1320
    nop

    .line 1308
    .end local v4    # "parentCert":Ljava/security/cert/X509Certificate;
    .end local v5    # "prevDSAPubKey":Ljava/security/interfaces/DSAPublicKey;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1322
    .restart local v4    # "parentCert":Ljava/security/cert/X509Certificate;
    .restart local v5    # "prevDSAPubKey":Ljava/security/interfaces/DSAPublicKey;
    :cond_2
    invoke-interface {v5}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v6

    .line 1323
    .local v6, "dsaParams":Ljava/security/interfaces/DSAParams;
    new-instance v7, Ljava/security/spec/DSAPublicKeySpec;

    .line 1324
    invoke-interface {v2}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v8

    invoke-interface {v6}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v9

    invoke-interface {v6}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v10

    invoke-interface {v6}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v11

    invoke-direct {v7, v8, v9, v10, v11}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 1327
    .local v7, "dsaPubKeySpec":Ljava/security/spec/DSAPublicKeySpec;
    :try_start_0
    const-string v8, "DSA"

    invoke-interface {p2, v8}, Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v8

    .line 1328
    .local v8, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v8, v7}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v9

    .line 1330
    .end local v8    # "keyFactory":Ljava/security/KeyFactory;
    :catch_0
    move-exception v8

    .line 1332
    .local v8, "exception":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1314
    .end local v5    # "prevDSAPubKey":Ljava/security/interfaces/DSAPublicKey;
    .end local v6    # "dsaParams":Ljava/security/interfaces/DSAParams;
    .end local v7    # "dsaPubKeySpec":Ljava/security/spec/DSAPublicKeySpec;
    .end local v8    # "exception":Ljava/lang/Exception;
    :cond_3
    new-instance v6, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v6, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1335
    .end local v3    # "i":I
    .end local v4    # "parentCert":Ljava/security/cert/X509Certificate;
    :cond_4
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v3, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static blacklist getObject(Ljava/lang/String;[B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 4
    .param p0, "oid"    # Ljava/lang/String;
    .param p1, "ext"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 357
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    .line 359
    .local v0, "octs":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 361
    .end local v0    # "octs":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    :catch_0
    move-exception v0

    .line 363
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception processing extension "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static final blacklist getQualifierSet(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;
    .locals 7
    .param p0, "qualifiers"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 389
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 391
    .local v0, "pq":Ljava/util/Set;
    if-nez p0, :cond_0

    .line 393
    return-object v0

    .line 396
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 397
    .local v1, "bOut":Ljava/io/ByteArrayOutputStream;
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->create(Ljava/io/OutputStream;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;

    move-result-object v2

    .line 399
    .local v2, "aOut":Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v3

    .line 400
    .local v3, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 404
    :try_start_0
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v2, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeObject(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 406
    new-instance v4, Ljava/security/cert/PolicyQualifierInfo;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/cert/PolicyQualifierInfo;-><init>([B)V

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    nop

    .line 413
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_0

    .line 408
    :catch_0
    move-exception v4

    .line 410
    .local v4, "ex":Ljava/io/IOException;
    new-instance v5, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v6, "Policy qualifier info cannot be decoded."

    invoke-direct {v5, v6, v4}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 416
    .end local v4    # "ex":Ljava/io/IOException;
    :cond_1
    return-object v0
.end method

.method private static blacklist getSerialNumber(Ljava/lang/Object;)Ljava/math/BigInteger;
    .locals 1
    .param p0, "cert"    # Ljava/lang/Object;

    .line 932
    move-object v0, p0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method protected static blacklist getValidCertDateFromValidityModel(Ljava/util/Date;ILjava/security/cert/CertPath;I)Ljava/util/Date;
    .locals 5
    .param p0, "validityDate"    # Ljava/util/Date;
    .param p1, "validityModel"    # I
    .param p2, "certPath"    # Ljava/security/cert/CertPath;
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 1228
    const-string v0, "Date of cert gen extension could not be read."

    const/4 v1, 0x1

    if-ne v1, p1, :cond_3

    if-gtz p3, :cond_0

    goto :goto_0

    .line 1234
    :cond_0
    invoke-virtual {p2}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    add-int/lit8 v2, p3, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 1236
    .local v1, "issuedCert":Ljava/security/cert/X509Certificate;
    add-int/lit8 v2, p3, -0x1

    if-nez v2, :cond_2

    .line 1239
    const/4 v2, 0x0

    .line 1242
    .local v2, "dateOfCertgen":Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;
    :try_start_0
    invoke-virtual {p2}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v3

    add-int/lit8 v4, p3, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    sget-object v4, Lcom/android/internal/org/bouncycastle/asn1/isismtt/ISISMTTObjectIdentifiers;->id_isismtt_at_dateOfCertGen:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1243
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v3

    .line 1244
    .local v3, "extBytes":[B
    if-eqz v3, :cond_1

    .line 1246
    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v0

    .line 1256
    .end local v3    # "extBytes":[B
    :cond_1
    nop

    .line 1257
    if-eqz v2, :cond_2

    .line 1261
    :try_start_1
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;->getDate()Ljava/util/Date;

    move-result-object v0
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 1263
    :catch_0
    move-exception v0

    .line 1265
    .local v0, "e":Ljava/text/ParseException;
    new-instance v3, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "Date from date of cert gen extension could not be parsed."

    invoke-direct {v3, v4, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1253
    .end local v0    # "e":Ljava/text/ParseException;
    :catch_1
    move-exception v3

    .line 1255
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    invoke-direct {v4, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1249
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v3

    .line 1251
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    invoke-direct {v4, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1270
    .end local v2    # "dateOfCertgen":Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;
    .end local v3    # "e":Ljava/io/IOException;
    :cond_2
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 1231
    .end local v1    # "issuedCert":Ljava/security/cert/X509Certificate;
    :cond_3
    :goto_0
    return-object p0
.end method

.method protected static blacklist getValidityDate(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;)Ljava/util/Date;
    .locals 2
    .param p0, "paramsPKIX"    # Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .param p1, "currentDate"    # Ljava/util/Date;

    .line 328
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->getValidityDate()Ljava/util/Date;

    move-result-object v0

    .line 330
    .local v0, "validityDate":Ljava/util/Date;
    if-nez v0, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method protected static blacklist isAnyPolicy(Ljava/util/Set;)Z
    .locals 1
    .param p0, "policySet"    # Ljava/util/Set;

    .line 661
    if-eqz p0, :cond_1

    const-string v0, "2.5.29.32.0"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

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

.method private static blacklist isDeltaCRL(Ljava/security/cert/X509CRL;)Z
    .locals 2
    .param p0, "crl"    # Ljava/security/cert/X509CRL;

    .line 1169
    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    .line 1171
    .local v0, "critical":Ljava/util/Set;
    if-nez v0, :cond_0

    .line 1173
    const/4 v1, 0x0

    return v1

    .line 1176
    :cond_0
    sget-object v1, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method static blacklist isIssuerTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Z
    .locals 2
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .param p1, "trustAnchors"    # Ljava/util/Set;
    .param p2, "sigProvider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 287
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Ljava/security/cert/TrustAnchor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 289
    :catch_0
    move-exception v1

    .line 291
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method

.method protected static blacklist isSelfIssued(Ljava/security/cert/X509Certificate;)Z
    .locals 2
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    .line 335
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected static blacklist prepareNextCertB1(I[Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Ljava/security/cert/X509Certificate;)V
    .locals 20
    .param p0, "i"    # I
    .param p1, "policyNodes"    # [Ljava/util/List;
    .param p2, "id_p"    # Ljava/lang/String;
    .param p3, "m_idp"    # Ljava/util/Map;
    .param p4, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;,
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 542
    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const/4 v0, 0x0

    .line 543
    .local v0, "idp_found":Z
    aget-object v1, p1, p0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 544
    .local v1, "nodes_i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 546
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 547
    .local v2, "node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 549
    const/4 v0, 0x1

    .line 550
    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    iput-object v3, v2, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->expectedPolicies:Ljava/util/Set;

    .line 551
    move v11, v0

    goto :goto_1

    .line 553
    .end local v2    # "node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_0
    goto :goto_0

    .line 544
    :cond_1
    move v11, v0

    .line 555
    .end local v0    # "idp_found":Z
    .local v11, "idp_found":Z
    :goto_1
    if-nez v11, :cond_8

    .line 557
    aget-object v0, p1, p0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 558
    .end local v1    # "nodes_i":Ljava/util/Iterator;
    .local v12, "nodes_i":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 560
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 561
    .local v13, "node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v13}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2.5.29.32.0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 563
    const/4 v2, 0x0

    .line 564
    .local v2, "pq":Ljava/util/Set;
    const/4 v3, 0x0

    .line 567
    .local v3, "policies":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_0
    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-object/from16 v14, p4

    :try_start_1
    invoke-static {v14, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v15, v0

    .line 572
    .end local v3    # "policies":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .local v15, "policies":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    nop

    .line 573
    invoke-virtual {v15}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v16

    .line 574
    .local v16, "e":Ljava/util/Enumeration;
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 576
    const/4 v3, 0x0

    .line 580
    .local v3, "pinfo":Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;
    :try_start_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v3, v0

    .line 585
    nop

    .line 586
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 590
    :try_start_3
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getQualifierSet(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;

    move-result-object v0
    :try_end_3
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v2, v0

    .line 596
    goto :goto_4

    .line 592
    :catch_0
    move-exception v0

    .line 594
    .local v0, "ex":Ljava/security/cert/CertPathValidatorException;
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v4, "Policy qualifier info set could not be built."

    invoke-direct {v1, v4, v0}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 599
    .end local v0    # "ex":Ljava/security/cert/CertPathValidatorException;
    .end local v3    # "pinfo":Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;
    :cond_2
    goto :goto_3

    .line 582
    .restart local v3    # "pinfo":Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;
    :catch_1
    move-exception v0

    .line 584
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "Policy information cannot be decoded."

    invoke-direct {v1, v4, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 574
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v3    # "pinfo":Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;
    :cond_3
    move-object v0, v2

    .line 600
    .end local v2    # "pq":Ljava/util/Set;
    .local v0, "pq":Ljava/util/Set;
    :goto_4
    const/4 v2, 0x0

    .line 601
    .local v2, "ci":Z
    invoke-virtual/range {p4 .. p4}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 603
    invoke-virtual/range {p4 .. p4}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v3

    sget-object v4, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    move/from16 v17, v2

    goto :goto_5

    .line 601
    :cond_4
    move/from16 v17, v2

    .line 606
    .end local v2    # "ci":Z
    .local v17, "ci":Z
    :goto_5
    invoke-virtual {v13}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 607
    .local v8, "p_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 609
    new-instance v18, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 611
    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/util/Set;

    move-object/from16 v1, v18

    move/from16 v3, p0

    move-object v5, v8

    move-object v6, v0

    move-object/from16 v7, p2

    move-object/from16 v19, v0

    move-object v0, v8

    .end local v8    # "p_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v0, "p_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v19, "pq":Ljava/util/Set;
    move/from16 v8, v17

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 613
    .local v1, "c_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 614
    aget-object v2, p1, p0

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 615
    .end local v1    # "c_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    goto :goto_7

    .line 607
    .end local v19    # "pq":Ljava/util/Set;
    .local v0, "pq":Ljava/util/Set;
    .restart local v8    # "p_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_5
    move-object/from16 v19, v0

    move-object v0, v8

    .end local v8    # "p_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v0, "p_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v19    # "pq":Ljava/util/Set;
    goto :goto_7

    .line 569
    .end local v0    # "p_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v15    # "policies":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v16    # "e":Ljava/util/Enumeration;
    .end local v17    # "ci":Z
    .end local v19    # "pq":Ljava/util/Set;
    .local v2, "pq":Ljava/util/Set;
    .local v3, "policies":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    move-object/from16 v14, p4

    .line 571
    .local v0, "e":Ljava/lang/Exception;
    :goto_6
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "Certificate policies cannot be decoded."

    invoke-direct {v1, v4, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 561
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "pq":Ljava/util/Set;
    .end local v3    # "policies":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :cond_6
    move-object/from16 v14, p4

    .line 618
    .end local v13    # "node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    goto/16 :goto_2

    .line 558
    :cond_7
    move-object/from16 v14, p4

    .line 620
    :goto_7
    move-object v1, v12

    goto :goto_8

    .line 555
    .end local v12    # "nodes_i":Ljava/util/Iterator;
    .local v1, "nodes_i":Ljava/util/Iterator;
    :cond_8
    move-object/from16 v14, p4

    .line 620
    :goto_8
    return-void
.end method

.method protected static blacklist prepareNextCertB2(I[Ljava/util/List;Ljava/lang/String;Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .locals 8
    .param p0, "i"    # I
    .param p1, "policyNodes"    # [Ljava/util/List;
    .param p2, "id_p"    # Ljava/lang/String;
    .param p3, "validPolicyTree"    # Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 628
    aget-object v0, p1, p0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 629
    .local v0, "nodes_i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 631
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 632
    .local v1, "node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 634
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 635
    .local v2, "p_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v2, v1}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->removeChild(Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 636
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 637
    add-int/lit8 v3, p0, -0x1

    .local v3, "k":I
    :goto_1
    if-ltz v3, :cond_2

    .line 639
    aget-object v4, p1, v3

    .line 640
    .local v4, "nodes":Ljava/util/List;
    const/4 v5, 0x0

    .local v5, "l":I
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 642
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 643
    .local v6, "node2":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v7

    if-nez v7, :cond_0

    .line 645
    invoke-static {p3, p1, v6}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object p3

    .line 646
    if-nez p3, :cond_0

    .line 648
    goto :goto_3

    .line 640
    .end local v6    # "node2":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 637
    .end local v4    # "nodes":Ljava/util/List;
    .end local v5    # "l":I
    :cond_1
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 654
    .end local v1    # "node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v2    # "p_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v3    # "k":I
    :cond_2
    goto :goto_0

    .line 655
    :cond_3
    return-object p3
.end method

.method protected static blacklist processCertD1i(I[Ljava/util/List;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Set;)Z
    .locals 14
    .param p0, "index"    # I
    .param p1, "policyNodes"    # [Ljava/util/List;
    .param p2, "pOid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p3, "pq"    # Ljava/util/Set;

    .line 473
    add-int/lit8 v0, p0, -0x1

    aget-object v8, p1, v0

    .line 475
    .local v8, "policyNodeVec":Ljava/util/List;
    const/4 v0, 0x0

    move v9, v0

    .local v9, "j":I
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_1

    .line 477
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 478
    .local v10, "node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v10}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->getExpectedPolicies()Ljava/util/Set;

    move-result-object v11

    .line 480
    .local v11, "expectedPolicies":Ljava/util/Set;
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v12, v0

    .line 483
    .local v12, "childExpectedPolicies":Ljava/util/Set;
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 485
    new-instance v13, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 490
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, v13

    move v2, p0

    move-object v3, v12

    move-object v4, v10

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 492
    .local v0, "child":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v10, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 493
    aget-object v1, p1, p0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    const/4 v1, 0x1

    return v1

    .line 475
    .end local v0    # "child":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v10    # "node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v11    # "expectedPolicies":Ljava/util/Set;
    .end local v12    # "childExpectedPolicies":Ljava/util/Set;
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 499
    .end local v9    # "j":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected static blacklist processCertD1ii(I[Ljava/util/List;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Set;)V
    .locals 13
    .param p0, "index"    # I
    .param p1, "policyNodes"    # [Ljava/util/List;
    .param p2, "_poid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p3, "_pq"    # Ljava/util/Set;

    .line 508
    add-int/lit8 v0, p0, -0x1

    aget-object v8, p1, v0

    .line 510
    .local v8, "policyNodeVec":Ljava/util/List;
    const/4 v0, 0x0

    move v9, v0

    .local v9, "j":I
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_1

    .line 512
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 514
    .local v10, "_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v10}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2.5.29.32.0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v11, v0

    .line 517
    .local v11, "_childExpectedPolicies":Ljava/util/Set;
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 519
    new-instance v12, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 524
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, v12

    move v2, p0

    move-object v3, v11

    move-object v4, v10

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 526
    .local v0, "_child":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v10, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 527
    aget-object v1, p1, p0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    return-void

    .line 510
    .end local v0    # "_child":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v10    # "_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v11    # "_childExpectedPolicies":Ljava/util/Set;
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 531
    .end local v9    # "j":I
    :cond_1
    return-void
.end method

.method protected static blacklist removePolicyNode(Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .locals 4
    .param p0, "validPolicyTree"    # Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .param p1, "policyNodes"    # [Ljava/util/List;
    .param p2, "_node"    # Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 424
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 426
    .local v0, "_parent":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 428
    return-object v1

    .line 431
    :cond_0
    if-nez v0, :cond_2

    .line 433
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 435
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, p1, v2

    .line 433
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 438
    .end local v2    # "j":I
    :cond_1
    return-object v1

    .line 442
    :cond_2
    invoke-virtual {v0, p2}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->removeChild(Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 443
    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNodeRecurse([Ljava/util/List;Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 445
    return-object p0
.end method

.method private static blacklist removePolicyNodeRecurse([Ljava/util/List;Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;)V
    .locals 2
    .param p0, "policyNodes"    # [Ljava/util/List;
    .param p1, "_node"    # Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 453
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->getDepth()I

    move-result v0

    aget-object v0, p0, v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 455
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v0

    .line 458
    .local v0, "_iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 460
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 461
    .local v1, "_child":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-static {p0, v1}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNodeRecurse([Ljava/util/List;Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 462
    .end local v1    # "_child":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    goto :goto_0

    .line 464
    .end local v0    # "_iter":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method protected static blacklist verifyX509Certificate(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 0
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1403
    if-nez p2, :cond_0

    .line 1405
    invoke-virtual {p0, p1}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    goto :goto_0

    .line 1409
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V

    .line 1411
    :goto_0
    return-void
.end method
