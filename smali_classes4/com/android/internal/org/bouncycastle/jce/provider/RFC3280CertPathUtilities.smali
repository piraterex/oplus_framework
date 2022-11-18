.class Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;
.super Ljava/lang/Object;
.source "RFC3280CertPathUtilities.java"


# static fields
.field public static final blacklist ANY_POLICY:Ljava/lang/String; = "2.5.29.32.0"

.field public static final blacklist AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

.field public static final blacklist BASIC_CONSTRAINTS:Ljava/lang/String;

.field public static final blacklist CERTIFICATE_POLICIES:Ljava/lang/String;

.field public static final blacklist CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

.field public static final blacklist CRL_NUMBER:Ljava/lang/String;

.field protected static final blacklist CRL_SIGN:I = 0x6

.field public static final blacklist DELTA_CRL_INDICATOR:Ljava/lang/String;

.field public static final blacklist FRESHEST_CRL:Ljava/lang/String;

.field public static final blacklist INHIBIT_ANY_POLICY:Ljava/lang/String;

.field public static final blacklist ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

.field protected static final blacklist KEY_CERT_SIGN:I = 0x5

.field public static final blacklist KEY_USAGE:Ljava/lang/String;

.field public static final blacklist NAME_CONSTRAINTS:Ljava/lang/String;

.field public static final blacklist POLICY_CONSTRAINTS:Ljava/lang/String;

.field public static final blacklist POLICY_MAPPINGS:Ljava/lang/String;

.field public static final blacklist SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

.field protected static final blacklist crlReasons:[Ljava/lang/String;

.field private static final blacklist revChkClass:Ljava/lang/Class;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 12

    .line 69
    const-class v0, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;

    const-string/jumbo v1, "java.security.cert.PKIXRevocationChecker"

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/ClassUtil;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->revChkClass:Ljava/lang/Class;

    .line 390
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->certificatePolicies:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    .line 392
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->policyMappings:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    .line 394
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->inhibitAnyPolicy:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    .line 396
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    .line 398
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->freshestCRL:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->FRESHEST_CRL:Ljava/lang/String;

    .line 400
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->deltaCRLIndicator:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    .line 402
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->policyConstraints:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    .line 404
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->basicConstraints:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    .line 406
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->cRLDistributionPoints:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    .line 408
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->subjectAlternativeName:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    .line 410
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->nameConstraints:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    .line 412
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->authorityKeyIdentifier:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

    .line 414
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->keyUsage:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->KEY_USAGE:Ljava/lang/String;

    .line 416
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->cRLNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_NUMBER:Ljava/lang/String;

    .line 2242
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

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->crlReasons:[Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist checkCRL(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;Ljava/util/List;Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;)V
    .locals 22
    .param p0, "params"    # Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    .param p1, "dp"    # Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    .param p2, "paramsPKIX"    # Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .param p3, "currentDate"    # Ljava/util/Date;
    .param p4, "validityDate"    # Ljava/util/Date;
    .param p5, "cert"    # Ljava/security/cert/X509Certificate;
    .param p6, "defaultCRLSignCert"    # Ljava/security/cert/X509Certificate;
    .param p7, "defaultCRLSignKey"    # Ljava/security/PublicKey;
    .param p8, "certStatus"    # Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;
    .param p9, "reasonMask"    # Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;
    .param p10, "certPathCerts"    # Ljava/util/List;
    .param p11, "helper"    # Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;,
            Lcom/android/internal/org/bouncycastle/jce/provider/RecoverableCertPathValidatorException;
        }
    .end annotation

    .line 1679
    move-object/from16 v1, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    .line 1681
    nop

    .line 1683
    invoke-virtual/range {p4 .. p4}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_b

    .line 1696
    move-object/from16 v14, p0

    invoke-static {v14, v1, v11, v9, v10}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getCompleteCRLs(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;)Ljava/util/Set;

    move-result-object v15

    .line 1697
    .local v15, "crls":Ljava/util/Set;
    const/4 v0, 0x0

    .line 1698
    .local v0, "validCrlFound":Z
    const/4 v2, 0x0

    .line 1699
    .local v2, "lastException":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move/from16 v17, v0

    move-object/from16 v18, v2

    .line 1701
    .end local v0    # "validCrlFound":Z
    .end local v2    # "lastException":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .local v16, "crl_iter":Ljava/util/Iterator;
    .local v17, "validCrlFound":Z
    .local v18, "lastException":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual/range {p8 .. p8}, Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v0

    const/16 v8, 0xb

    if-ne v0, v8, :cond_9

    invoke-virtual/range {p9 .. p9}, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1705
    :try_start_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509CRL;

    .line 1708
    .local v0, "crl":Ljava/security/cert/X509CRL;
    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLD(Ljava/security/cert/X509CRL;Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;)Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;

    move-result-object v2

    move-object v7, v2

    .line 1716
    .local v7, "interimReasonsMask":Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;
    invoke-virtual {v7, v13}, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->hasNewReasons(Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;)Z

    move-result v2
    :try_end_0
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v2, :cond_0

    .line 1718
    goto :goto_0

    .line 1722
    :cond_0
    move-object v2, v0

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p2

    move-object v14, v7

    .end local v7    # "interimReasonsMask":Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;
    .local v14, "interimReasonsMask":Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;
    move-object/from16 v7, p10

    move-object/from16 v19, v15

    move v15, v8

    .end local v15    # "crls":Ljava/util/Set;
    .local v19, "crls":Ljava/util/Set;
    move-object/from16 v8, p11

    :try_start_1
    invoke-static/range {v2 .. v8}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLF(Ljava/security/cert/X509CRL;Ljava/lang/Object;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/List;Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/util/Set;

    move-result-object v2

    .line 1725
    .local v2, "keys":Ljava/util/Set;
    invoke-static {v0, v2}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLG(Ljava/security/cert/X509CRL;Ljava/util/Set;)Ljava/security/PublicKey;

    move-result-object v3

    .line 1727
    .local v3, "key":Ljava/security/PublicKey;
    const/4 v4, 0x0

    .line 1729
    .local v4, "deltaCRL":Ljava/security/cert/X509CRL;
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->isUseDeltasEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1732
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCertStores()Ljava/util/List;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCRLStores()Ljava/util/List;

    move-result-object v6
    :try_end_1
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v7, p11

    :try_start_2
    invoke-static {v10, v0, v5, v6, v7}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getDeltaCRLs(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/util/List;Ljava/util/List;Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/util/Set;

    move-result-object v5

    .line 1735
    .local v5, "deltaCRLs":Ljava/util/Set;
    invoke-static {v5, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLH(Ljava/util/Set;Ljava/security/PublicKey;)Ljava/security/cert/X509CRL;

    move-result-object v6

    move-object v4, v6

    goto :goto_1

    .line 1729
    .end local v5    # "deltaCRLs":Ljava/util/Set;
    :cond_1
    move-object/from16 v7, p11

    .line 1751
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->getValidityModel()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    .line 1758
    invoke-virtual/range {p5 .. p5}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v0}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    cmp-long v5, v5, v20

    if-ltz v5, :cond_2

    goto :goto_2

    .line 1760
    :cond_2
    new-instance v5, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v6, "No valid CRL for current time found."

    invoke-direct {v5, v6}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    .end local v16    # "crl_iter":Ljava/util/Iterator;
    .end local v17    # "validCrlFound":Z
    .end local v18    # "lastException":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .end local v19    # "crls":Ljava/util/Set;
    .end local p0    # "params":Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    .end local p1    # "dp":Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    .end local p2    # "paramsPKIX":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .end local p3    # "currentDate":Ljava/util/Date;
    .end local p4    # "validityDate":Ljava/util/Date;
    .end local p5    # "cert":Ljava/security/cert/X509Certificate;
    .end local p6    # "defaultCRLSignCert":Ljava/security/cert/X509Certificate;
    .end local p7    # "defaultCRLSignKey":Ljava/security/PublicKey;
    .end local p8    # "certStatus":Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;
    .end local p9    # "reasonMask":Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;
    .end local p10    # "certPathCerts":Ljava/util/List;
    .end local p11    # "helper":Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;
    throw v5

    .line 1764
    .restart local v16    # "crl_iter":Ljava/util/Iterator;
    .restart local v17    # "validCrlFound":Z
    .restart local v18    # "lastException":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v19    # "crls":Ljava/util/Set;
    .restart local p0    # "params":Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    .restart local p1    # "dp":Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    .restart local p2    # "paramsPKIX":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local p3    # "currentDate":Ljava/util/Date;
    .restart local p4    # "validityDate":Ljava/util/Date;
    .restart local p5    # "cert":Ljava/security/cert/X509Certificate;
    .restart local p6    # "defaultCRLSignCert":Ljava/security/cert/X509Certificate;
    .restart local p7    # "defaultCRLSignKey":Ljava/security/PublicKey;
    .restart local p8    # "certStatus":Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;
    .restart local p9    # "reasonMask":Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;
    .restart local p10    # "certPathCerts":Ljava/util/List;
    .restart local p11    # "helper":Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;
    :cond_3
    :goto_2
    invoke-static {v1, v11, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLB1(Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V

    .line 1767
    invoke-static {v1, v11, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLB2(Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V

    .line 1770
    invoke-static {v4, v0, v9}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLC(Ljava/security/cert/X509CRL;Ljava/security/cert/X509CRL;Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;)V

    .line 1773
    invoke-static {v10, v4, v11, v12, v9}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLI(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;)V

    .line 1776
    invoke-static {v10, v0, v11, v12}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLJ(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;)V

    .line 1779
    invoke-virtual/range {p8 .. p8}, Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_4

    .line 1781
    invoke-virtual {v12, v15}, Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;->setCertStatus(I)V

    .line 1785
    :cond_4
    invoke-virtual {v13, v14}, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->addReasons(Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;)V

    .line 1787
    invoke-virtual {v0}, Ljava/security/cert/X509CRL;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v5

    .line 1788
    .local v5, "criticalExtensions":Ljava/util/Set;
    if-eqz v5, :cond_6

    .line 1790
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v5, v6

    .line 1791
    sget-object v6, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1792
    sget-object v6, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->deltaCRLIndicator:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1794
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_3

    .line 1796
    :cond_5
    new-instance v6, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v8, "CRL contains unsupported critical extensions."

    invoke-direct {v6, v8}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    .end local v16    # "crl_iter":Ljava/util/Iterator;
    .end local v17    # "validCrlFound":Z
    .end local v18    # "lastException":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .end local v19    # "crls":Ljava/util/Set;
    .end local p0    # "params":Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    .end local p1    # "dp":Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    .end local p2    # "paramsPKIX":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .end local p3    # "currentDate":Ljava/util/Date;
    .end local p4    # "validityDate":Ljava/util/Date;
    .end local p5    # "cert":Ljava/security/cert/X509Certificate;
    .end local p6    # "defaultCRLSignCert":Ljava/security/cert/X509Certificate;
    .end local p7    # "defaultCRLSignKey":Ljava/security/PublicKey;
    .end local p8    # "certStatus":Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;
    .end local p9    # "reasonMask":Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;
    .end local p10    # "certPathCerts":Ljava/util/List;
    .end local p11    # "helper":Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;
    throw v6

    .line 1800
    .restart local v16    # "crl_iter":Ljava/util/Iterator;
    .restart local v17    # "validCrlFound":Z
    .restart local v18    # "lastException":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v19    # "crls":Ljava/util/Set;
    .restart local p0    # "params":Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    .restart local p1    # "dp":Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    .restart local p2    # "paramsPKIX":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local p3    # "currentDate":Ljava/util/Date;
    .restart local p4    # "validityDate":Ljava/util/Date;
    .restart local p5    # "cert":Ljava/security/cert/X509Certificate;
    .restart local p6    # "defaultCRLSignCert":Ljava/security/cert/X509Certificate;
    .restart local p7    # "defaultCRLSignKey":Ljava/security/PublicKey;
    .restart local p8    # "certStatus":Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;
    .restart local p9    # "reasonMask":Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;
    .restart local p10    # "certPathCerts":Ljava/util/List;
    .restart local p11    # "helper":Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;
    :cond_6
    :goto_3
    if-eqz v4, :cond_8

    .line 1802
    invoke-virtual {v4}, Ljava/security/cert/X509CRL;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v6

    move-object v5, v6

    .line 1803
    if-eqz v5, :cond_8

    .line 1805
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v5, v6

    .line 1806
    sget-object v6, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1807
    sget-object v6, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->deltaCRLIndicator:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1808
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_4

    .line 1810
    :cond_7
    new-instance v6, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v8, "Delta CRL contains unsupported critical extension."

    invoke-direct {v6, v8}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    .end local v16    # "crl_iter":Ljava/util/Iterator;
    .end local v17    # "validCrlFound":Z
    .end local v18    # "lastException":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .end local v19    # "crls":Ljava/util/Set;
    .end local p0    # "params":Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    .end local p1    # "dp":Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    .end local p2    # "paramsPKIX":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .end local p3    # "currentDate":Ljava/util/Date;
    .end local p4    # "validityDate":Ljava/util/Date;
    .end local p5    # "cert":Ljava/security/cert/X509Certificate;
    .end local p6    # "defaultCRLSignCert":Ljava/security/cert/X509Certificate;
    .end local p7    # "defaultCRLSignKey":Ljava/security/PublicKey;
    .end local p8    # "certStatus":Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;
    .end local p9    # "reasonMask":Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;
    .end local p10    # "certPathCerts":Ljava/util/List;
    .end local p11    # "helper":Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;
    throw v6
    :try_end_2
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1815
    .restart local v16    # "crl_iter":Ljava/util/Iterator;
    .restart local v17    # "validCrlFound":Z
    .restart local v18    # "lastException":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v19    # "crls":Ljava/util/Set;
    .restart local p0    # "params":Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    .restart local p1    # "dp":Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    .restart local p2    # "paramsPKIX":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local p3    # "currentDate":Ljava/util/Date;
    .restart local p4    # "validityDate":Ljava/util/Date;
    .restart local p5    # "cert":Ljava/security/cert/X509Certificate;
    .restart local p6    # "defaultCRLSignCert":Ljava/security/cert/X509Certificate;
    .restart local p7    # "defaultCRLSignKey":Ljava/security/PublicKey;
    .restart local p8    # "certStatus":Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;
    .restart local p9    # "reasonMask":Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;
    .restart local p10    # "certPathCerts":Ljava/util/List;
    .restart local p11    # "helper":Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;
    :cond_8
    :goto_4
    const/16 v17, 0x1

    .end local v0    # "crl":Ljava/security/cert/X509CRL;
    .end local v2    # "keys":Ljava/util/Set;
    .end local v3    # "key":Ljava/security/PublicKey;
    .end local v4    # "deltaCRL":Ljava/security/cert/X509CRL;
    .end local v5    # "criticalExtensions":Ljava/util/Set;
    .end local v14    # "interimReasonsMask":Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;
    goto :goto_6

    .line 1817
    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object/from16 v7, p11

    goto :goto_5

    .end local v19    # "crls":Ljava/util/Set;
    .restart local v15    # "crls":Ljava/util/Set;
    :catch_2
    move-exception v0

    move-object/from16 v7, p11

    move-object/from16 v19, v15

    .line 1819
    .end local v15    # "crls":Ljava/util/Set;
    .local v0, "e":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v19    # "crls":Ljava/util/Set;
    :goto_5
    move-object/from16 v18, v0

    .line 1820
    .end local v0    # "e":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    :goto_6
    move-object/from16 v14, p0

    move-object/from16 v15, v19

    goto/16 :goto_0

    .line 1701
    .end local v19    # "crls":Ljava/util/Set;
    .restart local v15    # "crls":Ljava/util/Set;
    :cond_9
    move-object/from16 v7, p11

    move-object/from16 v19, v15

    .line 1822
    .end local v15    # "crls":Ljava/util/Set;
    .restart local v19    # "crls":Ljava/util/Set;
    if-eqz v17, :cond_a

    .line 1826
    return-void

    .line 1824
    :cond_a
    throw v18

    .line 1685
    .end local v16    # "crl_iter":Ljava/util/Iterator;
    .end local v17    # "validCrlFound":Z
    .end local v18    # "lastException":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .end local v19    # "crls":Ljava/util/Set;
    :cond_b
    move-object/from16 v7, p11

    new-instance v0, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "Validation time is in future."

    invoke-direct {v0, v2}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static blacklist checkCRLs(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/List;Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;)V
    .locals 29
    .param p0, "params"    # Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    .param p1, "paramsPKIX"    # Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .param p2, "currentDate"    # Ljava/util/Date;
    .param p3, "validityDate"    # Ljava/util/Date;
    .param p4, "cert"    # Ljava/security/cert/X509Certificate;
    .param p5, "sign"    # Ljava/security/cert/X509Certificate;
    .param p6, "workingPublicKey"    # Ljava/security/PublicKey;
    .param p7, "certPathCerts"    # Ljava/util/List;
    .param p8, "helper"    # Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;,
            Lcom/android/internal/org/bouncycastle/jce/provider/RecoverableCertPathValidatorException;
        }
    .end annotation

    .line 1861
    const/4 v1, 0x0

    .line 1862
    .local v1, "lastException":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    const/4 v2, 0x0

    .line 1865
    .local v2, "crldp":Lcom/android/internal/org/bouncycastle/asn1/x509/CRLDistPoint;
    :try_start_0
    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    move-object/from16 v15, p4

    invoke-static {v15, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/CRLDistPoint;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    move-object v2, v0

    .line 1871
    nop

    .line 1873
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    move-object/from16 v14, p1

    invoke-direct {v0, v14}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;)V

    move-object v13, v0

    .line 1876
    .local v13, "paramsBldr":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    nop

    .line 1877
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->getNamedCRLStoreMap()Ljava/util/Map;

    move-result-object v0

    .line 1876
    move-object/from16 v11, p3

    move-object/from16 v10, p8

    invoke-static {v2, v0, v11, v10}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getAdditionalStoresFromCRLDistributionPoint(Lcom/android/internal/org/bouncycastle/asn1/x509/CRLDistPoint;Ljava/util/Map;Ljava/util/Date;Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/util/List;

    move-result-object v0

    .line 1878
    .local v0, "extras":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_1
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_6

    if-eqz v4, :cond_0

    .line 1880
    :try_start_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStore;

    invoke-virtual {v13, v4}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->addCRLStore(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStore;)Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    :try_end_2
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1883
    .end local v0    # "extras":Ljava/util/List;
    .end local v3    # "it":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    move-object/from16 v26, v2

    move-object/from16 v28, v13

    goto/16 :goto_8

    .line 1887
    :cond_0
    nop

    .line 1888
    new-instance v0, Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;-><init>()V

    move-object v9, v0

    .line 1889
    .local v9, "certStatus":Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;
    new-instance v12, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;

    invoke-direct {v12}, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;-><init>()V

    .line 1890
    .local v12, "reasonsMask":Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;
    invoke-virtual {v13}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v25

    .line 1892
    .local v25, "finalParams":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    const/4 v3, 0x0

    .line 1894
    .local v3, "validCrlFound":Z
    const/16 v8, 0xb

    if-eqz v2, :cond_3

    .line 1896
    const/4 v4, 0x0

    .line 1899
    .local v4, "dps":[Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    :try_start_3
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/CRLDistPoint;->getDistributionPoints()[Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object v7, v0

    .line 1904
    .end local v4    # "dps":[Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    .local v7, "dps":[Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    nop

    .line 1905
    if-eqz v7, :cond_2

    .line 1907
    const/4 v0, 0x0

    move-object/from16 v16, v1

    move/from16 v17, v3

    move v1, v0

    .end local v3    # "validCrlFound":Z
    .local v1, "i":I
    .local v16, "lastException":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .local v17, "validCrlFound":Z
    :goto_1
    array-length v0, v7

    if-ge v1, v0, :cond_1

    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v0

    if-ne v0, v8, :cond_1

    invoke-virtual {v12}, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1911
    :try_start_4
    aget-object v4, v7, v1
    :try_end_4
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_4 .. :try_end_4} :catch_2

    move-object/from16 v3, p0

    move-object/from16 v5, v25

    move-object/from16 v6, p2

    move-object/from16 v18, v7

    .end local v7    # "dps":[Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    .local v18, "dps":[Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    move-object/from16 v7, p3

    move-object/from16 v26, v2

    move v2, v8

    .end local v2    # "crldp":Lcom/android/internal/org/bouncycastle/asn1/x509/CRLDistPoint;
    .local v26, "crldp":Lcom/android/internal/org/bouncycastle/asn1/x509/CRLDistPoint;
    move-object/from16 v8, p4

    move-object/from16 v27, v9

    .end local v9    # "certStatus":Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;
    .local v27, "certStatus":Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;
    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, v27

    move-object/from16 v28, v13

    .end local v13    # "paramsBldr":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .local v28, "paramsBldr":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    move-object/from16 v13, p7

    move-object/from16 v14, p8

    :try_start_5
    invoke-static/range {v3 .. v14}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->checkCRL(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;Ljava/util/List;Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;)V
    :try_end_5
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1913
    const/4 v0, 0x1

    .line 1918
    .end local v17    # "validCrlFound":Z
    .local v0, "validCrlFound":Z
    move/from16 v17, v0

    goto :goto_3

    .line 1915
    .end local v0    # "validCrlFound":Z
    .restart local v17    # "validCrlFound":Z
    :catch_1
    move-exception v0

    goto :goto_2

    .end local v18    # "dps":[Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    .end local v26    # "crldp":Lcom/android/internal/org/bouncycastle/asn1/x509/CRLDistPoint;
    .end local v27    # "certStatus":Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;
    .end local v28    # "paramsBldr":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .restart local v2    # "crldp":Lcom/android/internal/org/bouncycastle/asn1/x509/CRLDistPoint;
    .restart local v7    # "dps":[Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    .restart local v9    # "certStatus":Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;
    .restart local v13    # "paramsBldr":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    :catch_2
    move-exception v0

    move-object/from16 v26, v2

    move-object/from16 v18, v7

    move v2, v8

    move-object/from16 v27, v9

    move-object/from16 v28, v13

    .line 1917
    .end local v2    # "crldp":Lcom/android/internal/org/bouncycastle/asn1/x509/CRLDistPoint;
    .end local v7    # "dps":[Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    .end local v9    # "certStatus":Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;
    .end local v13    # "paramsBldr":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .local v0, "e":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v18    # "dps":[Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    .restart local v26    # "crldp":Lcom/android/internal/org/bouncycastle/asn1/x509/CRLDistPoint;
    .restart local v27    # "certStatus":Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;
    .restart local v28    # "paramsBldr":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    :goto_2
    move-object v3, v0

    move-object/from16 v16, v3

    .line 1907
    .end local v0    # "e":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    :goto_3
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v14, p1

    move-object/from16 v11, p3

    move-object/from16 v10, p8

    move v8, v2

    move-object/from16 v7, v18

    move-object/from16 v2, v26

    move-object/from16 v9, v27

    move-object/from16 v13, v28

    goto :goto_1

    .end local v18    # "dps":[Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    .end local v26    # "crldp":Lcom/android/internal/org/bouncycastle/asn1/x509/CRLDistPoint;
    .end local v27    # "certStatus":Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;
    .end local v28    # "paramsBldr":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .restart local v2    # "crldp":Lcom/android/internal/org/bouncycastle/asn1/x509/CRLDistPoint;
    .restart local v7    # "dps":[Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    .restart local v9    # "certStatus":Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;
    .restart local v13    # "paramsBldr":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    :cond_1
    move-object/from16 v26, v2

    move-object/from16 v18, v7

    move v2, v8

    move-object/from16 v27, v9

    move-object/from16 v28, v13

    .line 1929
    .end local v1    # "i":I
    .end local v2    # "crldp":Lcom/android/internal/org/bouncycastle/asn1/x509/CRLDistPoint;
    .end local v7    # "dps":[Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    .end local v9    # "certStatus":Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;
    .end local v13    # "paramsBldr":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .restart local v26    # "crldp":Lcom/android/internal/org/bouncycastle/asn1/x509/CRLDistPoint;
    .restart local v27    # "certStatus":Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;
    .restart local v28    # "paramsBldr":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    move-object/from16 v1, v16

    move/from16 v3, v17

    goto :goto_4

    .line 1905
    .end local v16    # "lastException":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .end local v17    # "validCrlFound":Z
    .end local v26    # "crldp":Lcom/android/internal/org/bouncycastle/asn1/x509/CRLDistPoint;
    .end local v27    # "certStatus":Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;
    .end local v28    # "paramsBldr":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .local v1, "lastException":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v2    # "crldp":Lcom/android/internal/org/bouncycastle/asn1/x509/CRLDistPoint;
    .restart local v3    # "validCrlFound":Z
    .restart local v7    # "dps":[Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    .restart local v9    # "certStatus":Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;
    .restart local v13    # "paramsBldr":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    :cond_2
    move-object/from16 v26, v2

    move-object/from16 v18, v7

    move v2, v8

    move-object/from16 v27, v9

    move-object/from16 v28, v13

    .end local v2    # "crldp":Lcom/android/internal/org/bouncycastle/asn1/x509/CRLDistPoint;
    .end local v7    # "dps":[Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    .end local v9    # "certStatus":Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;
    .end local v13    # "paramsBldr":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .restart local v18    # "dps":[Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    .restart local v26    # "crldp":Lcom/android/internal/org/bouncycastle/asn1/x509/CRLDistPoint;
    .restart local v27    # "certStatus":Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;
    .restart local v28    # "paramsBldr":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    goto :goto_4

    .line 1901
    .end local v18    # "dps":[Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    .end local v26    # "crldp":Lcom/android/internal/org/bouncycastle/asn1/x509/CRLDistPoint;
    .end local v27    # "certStatus":Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;
    .end local v28    # "paramsBldr":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .restart local v2    # "crldp":Lcom/android/internal/org/bouncycastle/asn1/x509/CRLDistPoint;
    .restart local v4    # "dps":[Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    .restart local v9    # "certStatus":Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;
    .restart local v13    # "paramsBldr":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    :catch_3
    move-exception v0

    move-object/from16 v26, v2

    move-object/from16 v27, v9

    move-object/from16 v28, v13

    move-object v2, v0

    .end local v2    # "crldp":Lcom/android/internal/org/bouncycastle/asn1/x509/CRLDistPoint;
    .end local v9    # "certStatus":Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;
    .end local v13    # "paramsBldr":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .restart local v26    # "crldp":Lcom/android/internal/org/bouncycastle/asn1/x509/CRLDistPoint;
    .restart local v27    # "certStatus":Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;
    .restart local v28    # "paramsBldr":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    move-object v0, v2

    .line 1903
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v5, "Distribution points could not be read."

    invoke-direct {v2, v5, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1894
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "dps":[Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    .end local v26    # "crldp":Lcom/android/internal/org/bouncycastle/asn1/x509/CRLDistPoint;
    .end local v27    # "certStatus":Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;
    .end local v28    # "paramsBldr":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .restart local v2    # "crldp":Lcom/android/internal/org/bouncycastle/asn1/x509/CRLDistPoint;
    .restart local v9    # "certStatus":Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;
    .restart local v13    # "paramsBldr":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    :cond_3
    move-object/from16 v26, v2

    move v2, v8

    move-object/from16 v27, v9

    move-object/from16 v28, v13

    .line 1929
    .end local v2    # "crldp":Lcom/android/internal/org/bouncycastle/asn1/x509/CRLDistPoint;
    .end local v9    # "certStatus":Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;
    .end local v13    # "paramsBldr":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .restart local v26    # "crldp":Lcom/android/internal/org/bouncycastle/asn1/x509/CRLDistPoint;
    .restart local v27    # "certStatus":Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;
    .restart local v28    # "paramsBldr":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    :goto_4
    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v0

    if-ne v0, v2, :cond_4

    invoke-virtual {v12}, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1941
    :try_start_6
    invoke-static/range {p4 .. p4}, Lcom/android/internal/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509Certificate;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_6 .. :try_end_6} :catch_4

    .line 1946
    .local v0, "issuer":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    nop

    .line 1947
    :try_start_7
    new-instance v14, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;

    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;

    const/4 v5, 0x0

    new-instance v6, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    new-instance v7, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    const/4 v8, 0x4

    invoke-direct {v7, v8, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;-><init>(ILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v6, v7}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;)V

    invoke-direct {v4, v5, v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;-><init>(ILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v5, 0x0

    invoke-direct {v14, v4, v5, v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;)V

    .line 1949
    .local v14, "dp":Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-object v15, v4

    .line 1950
    .local v15, "paramsPKIXClone":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    move-object/from16 v13, p0

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    move-object/from16 v20, p6

    move-object/from16 v21, v27

    move-object/from16 v22, v12

    move-object/from16 v23, p7

    move-object/from16 v24, p8

    invoke-static/range {v13 .. v24}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->checkCRL(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;Ljava/util/List;Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;)V

    .line 1952
    const/4 v3, 0x1

    .line 1957
    .end local v0    # "issuer":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .end local v14    # "dp":Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    .end local v15    # "paramsPKIXClone":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    goto :goto_6

    .line 1954
    :catch_4
    move-exception v0

    goto :goto_5

    .line 1943
    :catch_5
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 1945
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v4, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v5, "Issuer from certificate for CRL could not be reencoded."

    invoke-direct {v4, v5, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "lastException":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .end local v3    # "validCrlFound":Z
    .end local v12    # "reasonsMask":Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;
    .end local v25    # "finalParams":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .end local v26    # "crldp":Lcom/android/internal/org/bouncycastle/asn1/x509/CRLDistPoint;
    .end local v27    # "certStatus":Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;
    .end local v28    # "paramsBldr":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .end local p0    # "params":Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    .end local p1    # "paramsPKIX":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .end local p2    # "currentDate":Ljava/util/Date;
    .end local p3    # "validityDate":Ljava/util/Date;
    .end local p4    # "cert":Ljava/security/cert/X509Certificate;
    .end local p5    # "sign":Ljava/security/cert/X509Certificate;
    .end local p6    # "workingPublicKey":Ljava/security/PublicKey;
    .end local p7    # "certPathCerts":Ljava/util/List;
    .end local p8    # "helper":Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;
    throw v4
    :try_end_7
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_7 .. :try_end_7} :catch_4

    .line 1956
    .local v0, "e":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v1    # "lastException":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v3    # "validCrlFound":Z
    .restart local v12    # "reasonsMask":Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;
    .restart local v25    # "finalParams":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local v26    # "crldp":Lcom/android/internal/org/bouncycastle/asn1/x509/CRLDistPoint;
    .restart local v27    # "certStatus":Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;
    .restart local v28    # "paramsBldr":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .restart local p0    # "params":Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    .restart local p1    # "paramsPKIX":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local p2    # "currentDate":Ljava/util/Date;
    .restart local p3    # "validityDate":Ljava/util/Date;
    .restart local p4    # "cert":Ljava/security/cert/X509Certificate;
    .restart local p5    # "sign":Ljava/security/cert/X509Certificate;
    .restart local p6    # "workingPublicKey":Ljava/security/PublicKey;
    .restart local p7    # "certPathCerts":Ljava/util/List;
    .restart local p8    # "helper":Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;
    :goto_5
    move-object v1, v0

    .line 1960
    .end local v0    # "e":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    :cond_4
    :goto_6
    if-nez v3, :cond_6

    .line 1962
    instance-of v0, v1, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    if-eqz v0, :cond_5

    .line 1964
    throw v1

    .line 1967
    :cond_5
    new-instance v0, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "No valid CRL found."

    invoke-direct {v0, v2, v1}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1969
    :cond_6
    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v0

    if-ne v0, v2, :cond_9

    .line 1977
    invoke-virtual {v12}, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v0

    const/16 v4, 0xc

    if-nez v0, :cond_7

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v0

    if-ne v0, v2, :cond_7

    .line 1979
    move-object/from16 v2, v27

    .end local v27    # "certStatus":Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;
    .local v2, "certStatus":Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;
    invoke-virtual {v2, v4}, Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;->setCertStatus(I)V

    goto :goto_7

    .line 1977
    .end local v2    # "certStatus":Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;
    .restart local v27    # "certStatus":Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;
    :cond_7
    move-object/from16 v2, v27

    .line 1981
    .end local v27    # "certStatus":Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;
    .restart local v2    # "certStatus":Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;
    :goto_7
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v0

    if-eq v0, v4, :cond_8

    .line 1985
    return-void

    .line 1983
    :cond_8
    new-instance v0, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "Certificate status could not be determined."

    invoke-direct {v0, v4}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1971
    .end local v2    # "certStatus":Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;
    .restart local v27    # "certStatus":Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;
    :cond_9
    move-object/from16 v2, v27

    .end local v27    # "certStatus":Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;
    .restart local v2    # "certStatus":Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss Z"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1972
    .local v0, "df":Ljava/text/SimpleDateFormat;
    const-string v4, "UTC"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1973
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Certificate revocation after "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;->getRevocationDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1974
    .local v4, "message":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", reason: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->crlReasons:[Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1975
    new-instance v5, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    invoke-direct {v5, v4}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1883
    .end local v0    # "df":Ljava/text/SimpleDateFormat;
    .end local v3    # "validCrlFound":Z
    .end local v4    # "message":Ljava/lang/String;
    .end local v12    # "reasonsMask":Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;
    .end local v25    # "finalParams":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .end local v26    # "crldp":Lcom/android/internal/org/bouncycastle/asn1/x509/CRLDistPoint;
    .end local v28    # "paramsBldr":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .local v2, "crldp":Lcom/android/internal/org/bouncycastle/asn1/x509/CRLDistPoint;
    .restart local v13    # "paramsBldr":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    :catch_6
    move-exception v0

    move-object/from16 v26, v2

    move-object/from16 v28, v13

    .line 1885
    .end local v2    # "crldp":Lcom/android/internal/org/bouncycastle/asn1/x509/CRLDistPoint;
    .end local v13    # "paramsBldr":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .local v0, "e":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v26    # "crldp":Lcom/android/internal/org/bouncycastle/asn1/x509/CRLDistPoint;
    .restart local v28    # "paramsBldr":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    :goto_8
    new-instance v2, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v3, "No additional CRL locations could be decoded from CRL distribution point extension."

    invoke-direct {v2, v3, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1868
    .end local v0    # "e":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .end local v26    # "crldp":Lcom/android/internal/org/bouncycastle/asn1/x509/CRLDistPoint;
    .end local v28    # "paramsBldr":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .restart local v2    # "crldp":Lcom/android/internal/org/bouncycastle/asn1/x509/CRLDistPoint;
    :catch_7
    move-exception v0

    .line 1870
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "CRL distribution point extension could not be read."

    invoke-direct {v3, v4, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected static blacklist prepareCertB(Ljava/security/cert/CertPath;I[Ljava/util/List;Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;I)Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .locals 31
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "policyNodes"    # [Ljava/util/List;
    .param p3, "validPolicyTree"    # Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .param p4, "policyMapping"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 793
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {p0 .. p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v4

    .line 794
    .local v4, "certs":Ljava/util/List;
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 795
    .local v5, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    .line 797
    .local v6, "n":I
    sub-int v15, v6, v2

    .line 800
    .local v15, "i":I
    const/4 v7, 0x0

    .line 803
    .local v7, "pm":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_0
    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-static {v5, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_3

    move-object/from16 v16, v0

    .line 810
    .end local v7    # "pm":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .local v16, "pm":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    nop

    .line 811
    move-object/from16 v0, p3

    .line 812
    .local v0, "_validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    if-eqz v16, :cond_12

    .line 814
    move-object/from16 v14, v16

    .line 815
    .local v14, "mappings":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    move-object v13, v7

    .line 816
    .local v13, "m_idp":Ljava/util/Map;
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    move-object v12, v7

    .line 818
    .local v12, "s_idp":Ljava/util/Set;
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_0
    invoke-virtual {v14}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 820
    invoke-virtual {v14, v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v8

    check-cast v8, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 821
    .local v8, "mapping":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v9

    check-cast v9, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v9

    .line 822
    .local v9, "id_p":Ljava/lang/String;
    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v10

    check-cast v10, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v10}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v10

    .line 825
    .local v10, "sd_p":Ljava/lang/String;
    invoke-interface {v13, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 827
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 828
    .local v11, "tmp":Ljava/util/Set;
    invoke-interface {v11, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 829
    invoke-interface {v13, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    invoke-interface {v12, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 834
    .end local v11    # "tmp":Ljava/util/Set;
    :cond_0
    invoke-interface {v13, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Set;

    .line 835
    .restart local v11    # "tmp":Ljava/util/Set;
    invoke-interface {v11, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 818
    .end local v8    # "mapping":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v9    # "id_p":Ljava/lang/String;
    .end local v10    # "sd_p":Ljava/lang/String;
    .end local v11    # "tmp":Ljava/util/Set;
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 839
    .end local v7    # "j":I
    :cond_1
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    move-object/from16 v18, v0

    .line 840
    .end local v0    # "_validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v17, "it_idp":Ljava/util/Iterator;
    .local v18, "_validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 842
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    .line 847
    .local v11, "id_p":Ljava/lang/String;
    if-lez p4, :cond_b

    .line 849
    const/4 v0, 0x0

    .line 850
    .local v0, "idp_found":Z
    aget-object v7, v3, v15

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 851
    .local v7, "nodes_i":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 853
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 854
    .local v8, "node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 856
    const/4 v0, 0x1

    .line 857
    invoke-interface {v13, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    iput-object v9, v8, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->expectedPolicies:Ljava/util/Set;

    .line 858
    move/from16 v19, v0

    goto :goto_4

    .line 860
    .end local v8    # "node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_2
    goto :goto_3

    .line 851
    :cond_3
    move/from16 v19, v0

    .line 862
    .end local v0    # "idp_found":Z
    .local v19, "idp_found":Z
    :goto_4
    if-nez v19, :cond_a

    .line 864
    aget-object v0, v3, v15

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .line 865
    .end local v7    # "nodes_i":Ljava/util/Iterator;
    .local v20, "nodes_i":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 867
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 868
    .local v21, "node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v0

    const-string v7, "2.5.29.32.0"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 870
    const/4 v8, 0x0

    .line 871
    .local v8, "pq":Ljava/util/Set;
    const/4 v9, 0x0

    .line 874
    .local v9, "policies":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_1
    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-static {v5, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :try_end_1
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v22, v0

    .line 881
    .end local v9    # "policies":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .local v22, "policies":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    nop

    .line 882
    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v23

    .line 883
    .local v23, "e":Ljava/util/Enumeration;
    :goto_6
    invoke-interface/range {v23 .. v23}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 885
    const/4 v9, 0x0

    .line 888
    .local v9, "pinfo":Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;
    :try_start_2
    invoke-interface/range {v23 .. v23}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v9, v0

    .line 894
    nop

    .line 895
    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 899
    nop

    .line 900
    :try_start_3
    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getQualifierSet(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;

    move-result-object v0
    :try_end_3
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v8, v0

    .line 908
    goto :goto_7

    .line 902
    :catch_0
    move-exception v0

    .line 905
    .local v0, "ex":Ljava/security/cert/CertPathValidatorException;
    new-instance v7, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v10, "Policy qualifier info set could not be decoded."

    invoke-direct {v7, v10, v0, v1, v2}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v7

    .line 911
    .end local v0    # "ex":Ljava/security/cert/CertPathValidatorException;
    .end local v9    # "pinfo":Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;
    :cond_4
    goto :goto_6

    .line 890
    .restart local v9    # "pinfo":Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;
    :catch_1
    move-exception v0

    .line 892
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v7, Ljava/security/cert/CertPathValidatorException;

    const-string v10, "Policy information could not be decoded."

    invoke-direct {v7, v10, v0, v1, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v7

    .line 883
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v9    # "pinfo":Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;
    :cond_5
    move-object v0, v8

    .line 912
    .end local v8    # "pq":Ljava/util/Set;
    .local v0, "pq":Ljava/util/Set;
    :goto_7
    const/4 v8, 0x0

    .line 913
    .local v8, "ci":Z
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 915
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v9

    sget-object v10, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    move/from16 v24, v8

    goto :goto_8

    .line 913
    :cond_6
    move/from16 v24, v8

    .line 919
    .end local v8    # "ci":Z
    .local v24, "ci":Z
    :goto_8
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 920
    .local v10, "p_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v10}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 922
    new-instance v25, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 923
    invoke-interface {v13, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v26, v7

    check-cast v26, Ljava/util/Set;

    move-object/from16 v7, v25

    move v9, v15

    move-object/from16 v27, v10

    .end local v10    # "p_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v27, "p_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    move-object/from16 v10, v26

    move-object/from16 v26, v11

    .end local v11    # "id_p":Ljava/lang/String;
    .local v26, "id_p":Ljava/lang/String;
    move-object/from16 v11, v27

    move-object/from16 v28, v12

    .end local v12    # "s_idp":Ljava/util/Set;
    .local v28, "s_idp":Ljava/util/Set;
    move-object v12, v0

    move-object/from16 v29, v13

    .end local v13    # "m_idp":Ljava/util/Map;
    .local v29, "m_idp":Ljava/util/Map;
    move-object/from16 v13, v26

    move-object/from16 v30, v14

    .end local v14    # "mappings":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .local v30, "mappings":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    move/from16 v14, v24

    invoke-direct/range {v7 .. v14}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 924
    .local v7, "c_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    move-object/from16 v8, v27

    .end local v27    # "p_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v8, "p_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v8, v7}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 925
    aget-object v9, v3, v15

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 926
    .end local v7    # "c_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    goto :goto_9

    .line 920
    .end local v8    # "p_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v26    # "id_p":Ljava/lang/String;
    .end local v28    # "s_idp":Ljava/util/Set;
    .end local v29    # "m_idp":Ljava/util/Map;
    .end local v30    # "mappings":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v10    # "p_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v11    # "id_p":Ljava/lang/String;
    .restart local v12    # "s_idp":Ljava/util/Set;
    .restart local v13    # "m_idp":Ljava/util/Map;
    .restart local v14    # "mappings":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :cond_7
    move-object v8, v10

    move-object/from16 v26, v11

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move-object/from16 v30, v14

    .end local v10    # "p_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v11    # "id_p":Ljava/lang/String;
    .end local v12    # "s_idp":Ljava/util/Set;
    .end local v13    # "m_idp":Ljava/util/Map;
    .end local v14    # "mappings":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v8    # "p_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v26    # "id_p":Ljava/lang/String;
    .restart local v28    # "s_idp":Ljava/util/Set;
    .restart local v29    # "m_idp":Ljava/util/Map;
    .restart local v30    # "mappings":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    goto :goto_9

    .line 877
    .end local v0    # "pq":Ljava/util/Set;
    .end local v22    # "policies":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v23    # "e":Ljava/util/Enumeration;
    .end local v24    # "ci":Z
    .end local v26    # "id_p":Ljava/lang/String;
    .end local v28    # "s_idp":Ljava/util/Set;
    .end local v29    # "m_idp":Ljava/util/Map;
    .end local v30    # "mappings":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .local v8, "pq":Ljava/util/Set;
    .local v9, "policies":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v11    # "id_p":Ljava/lang/String;
    .restart local v12    # "s_idp":Ljava/util/Set;
    .restart local v13    # "m_idp":Ljava/util/Map;
    .restart local v14    # "mappings":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :catch_2
    move-exception v0

    move-object/from16 v26, v11

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move-object/from16 v30, v14

    .line 879
    .end local v11    # "id_p":Ljava/lang/String;
    .end local v12    # "s_idp":Ljava/util/Set;
    .end local v13    # "m_idp":Ljava/util/Map;
    .end local v14    # "mappings":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .local v0, "e":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v26    # "id_p":Ljava/lang/String;
    .restart local v28    # "s_idp":Ljava/util/Set;
    .restart local v29    # "m_idp":Ljava/util/Map;
    .restart local v30    # "mappings":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    new-instance v7, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v10, "Certificate policies extension could not be decoded."

    invoke-direct {v7, v10, v0, v1, v2}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v7

    .line 868
    .end local v0    # "e":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .end local v8    # "pq":Ljava/util/Set;
    .end local v9    # "policies":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v26    # "id_p":Ljava/lang/String;
    .end local v28    # "s_idp":Ljava/util/Set;
    .end local v29    # "m_idp":Ljava/util/Map;
    .end local v30    # "mappings":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v11    # "id_p":Ljava/lang/String;
    .restart local v12    # "s_idp":Ljava/util/Set;
    .restart local v13    # "m_idp":Ljava/util/Map;
    .restart local v14    # "mappings":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :cond_8
    move-object/from16 v26, v11

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move-object/from16 v30, v14

    .line 929
    .end local v11    # "id_p":Ljava/lang/String;
    .end local v12    # "s_idp":Ljava/util/Set;
    .end local v13    # "m_idp":Ljava/util/Map;
    .end local v14    # "mappings":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v21    # "node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v26    # "id_p":Ljava/lang/String;
    .restart local v28    # "s_idp":Ljava/util/Set;
    .restart local v29    # "m_idp":Ljava/util/Map;
    .restart local v30    # "mappings":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    goto/16 :goto_5

    .line 865
    .end local v26    # "id_p":Ljava/lang/String;
    .end local v28    # "s_idp":Ljava/util/Set;
    .end local v29    # "m_idp":Ljava/util/Map;
    .end local v30    # "mappings":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v11    # "id_p":Ljava/lang/String;
    .restart local v12    # "s_idp":Ljava/util/Set;
    .restart local v13    # "m_idp":Ljava/util/Map;
    .restart local v14    # "mappings":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :cond_9
    move-object/from16 v26, v11

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move-object/from16 v30, v14

    .end local v11    # "id_p":Ljava/lang/String;
    .end local v12    # "s_idp":Ljava/util/Set;
    .end local v13    # "m_idp":Ljava/util/Map;
    .end local v14    # "mappings":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v26    # "id_p":Ljava/lang/String;
    .restart local v28    # "s_idp":Ljava/util/Set;
    .restart local v29    # "m_idp":Ljava/util/Map;
    .restart local v30    # "mappings":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    goto :goto_9

    .line 862
    .end local v20    # "nodes_i":Ljava/util/Iterator;
    .end local v26    # "id_p":Ljava/lang/String;
    .end local v28    # "s_idp":Ljava/util/Set;
    .end local v29    # "m_idp":Ljava/util/Map;
    .end local v30    # "mappings":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .local v7, "nodes_i":Ljava/util/Iterator;
    .restart local v11    # "id_p":Ljava/lang/String;
    .restart local v12    # "s_idp":Ljava/util/Set;
    .restart local v13    # "m_idp":Ljava/util/Map;
    .restart local v14    # "mappings":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :cond_a
    move-object/from16 v26, v11

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move-object/from16 v30, v14

    .line 935
    .end local v7    # "nodes_i":Ljava/util/Iterator;
    .end local v11    # "id_p":Ljava/lang/String;
    .end local v12    # "s_idp":Ljava/util/Set;
    .end local v13    # "m_idp":Ljava/util/Map;
    .end local v14    # "mappings":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v19    # "idp_found":Z
    .restart local v26    # "id_p":Ljava/lang/String;
    .restart local v28    # "s_idp":Ljava/util/Set;
    .restart local v29    # "m_idp":Ljava/util/Map;
    .restart local v30    # "mappings":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :goto_9
    goto/16 :goto_e

    .line 936
    .end local v26    # "id_p":Ljava/lang/String;
    .end local v28    # "s_idp":Ljava/util/Set;
    .end local v29    # "m_idp":Ljava/util/Map;
    .end local v30    # "mappings":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v11    # "id_p":Ljava/lang/String;
    .restart local v12    # "s_idp":Ljava/util/Set;
    .restart local v13    # "m_idp":Ljava/util/Map;
    .restart local v14    # "mappings":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :cond_b
    move-object/from16 v26, v11

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move-object/from16 v30, v14

    .end local v11    # "id_p":Ljava/lang/String;
    .end local v12    # "s_idp":Ljava/util/Set;
    .end local v13    # "m_idp":Ljava/util/Map;
    .end local v14    # "mappings":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v26    # "id_p":Ljava/lang/String;
    .restart local v28    # "s_idp":Ljava/util/Set;
    .restart local v29    # "m_idp":Ljava/util/Map;
    .restart local v30    # "mappings":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    if-gtz p4, :cond_10

    .line 938
    aget-object v0, v3, v15

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 939
    .local v0, "nodes_i":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 941
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 942
    .local v7, "node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v9, v26

    .end local v26    # "id_p":Ljava/lang/String;
    .local v9, "id_p":Ljava/lang/String;
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 944
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v8

    check-cast v8, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 945
    .local v8, "p_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v8, v7}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->removeChild(Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 946
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 947
    add-int/lit8 v10, v15, -0x1

    .local v10, "k":I
    :goto_b
    if-ltz v10, :cond_e

    .line 949
    aget-object v11, v3, v10

    .line 950
    .local v11, "nodes":Ljava/util/List;
    const/4 v12, 0x0

    move-object/from16 v13, v18

    .end local v18    # "_validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v12, "l":I
    .local v13, "_validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :goto_c
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    if-ge v12, v14, :cond_d

    .line 952
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 953
    .local v14, "node2":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v14}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v18

    if-nez v18, :cond_c

    .line 955
    invoke-static {v13, v3, v14}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v13

    .line 957
    if-nez v13, :cond_c

    .line 959
    move-object/from16 v18, v13

    goto :goto_d

    .line 950
    .end local v14    # "node2":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_c

    :cond_d
    move-object/from16 v18, v13

    .line 947
    .end local v11    # "nodes":Ljava/util/List;
    .end local v12    # "l":I
    .end local v13    # "_validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v18    # "_validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :goto_d
    add-int/lit8 v10, v10, -0x1

    goto :goto_b

    .line 965
    .end local v7    # "node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v8    # "p_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v10    # "k":I
    :cond_e
    move-object/from16 v26, v9

    goto :goto_a

    .line 939
    .end local v9    # "id_p":Ljava/lang/String;
    .restart local v26    # "id_p":Ljava/lang/String;
    :cond_f
    move-object/from16 v9, v26

    .end local v26    # "id_p":Ljava/lang/String;
    .restart local v9    # "id_p":Ljava/lang/String;
    goto :goto_e

    .line 936
    .end local v0    # "nodes_i":Ljava/util/Iterator;
    .end local v9    # "id_p":Ljava/lang/String;
    .restart local v26    # "id_p":Ljava/lang/String;
    :cond_10
    move-object/from16 v9, v26

    .line 967
    .end local v26    # "id_p":Ljava/lang/String;
    :goto_e
    move-object/from16 v12, v28

    move-object/from16 v13, v29

    move-object/from16 v14, v30

    goto/16 :goto_2

    .line 840
    .end local v28    # "s_idp":Ljava/util/Set;
    .end local v29    # "m_idp":Ljava/util/Map;
    .end local v30    # "mappings":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .local v12, "s_idp":Ljava/util/Set;
    .local v13, "m_idp":Ljava/util/Map;
    .local v14, "mappings":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :cond_11
    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move-object/from16 v30, v14

    .end local v12    # "s_idp":Ljava/util/Set;
    .end local v13    # "m_idp":Ljava/util/Map;
    .end local v14    # "mappings":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v28    # "s_idp":Ljava/util/Set;
    .restart local v29    # "m_idp":Ljava/util/Map;
    .restart local v30    # "mappings":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    move-object/from16 v0, v18

    .line 969
    .end local v17    # "it_idp":Ljava/util/Iterator;
    .end local v18    # "_validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v28    # "s_idp":Ljava/util/Set;
    .end local v29    # "m_idp":Ljava/util/Map;
    .end local v30    # "mappings":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .local v0, "_validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_12
    return-object v0

    .line 806
    .end local v0    # "_validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v16    # "pm":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .local v7, "pm":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :catch_3
    move-exception v0

    .line 808
    .local v0, "ex":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v8, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v9, "Policy mappings extension could not be decoded."

    invoke-direct {v8, v9, v0, v1, v2}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v8
.end method

.method protected static blacklist prepareNextCertA(Ljava/security/cert/CertPath;I)V
    .locals 10
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 977
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 978
    .local v0, "certs":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 983
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    .line 986
    .local v2, "pm":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_0
    sget-object v3, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3
    :try_end_0
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v3

    .line 993
    nop

    .line 994
    if-eqz v2, :cond_2

    .line 996
    move-object v3, v2

    .line 998
    .local v3, "mappings":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 1000
    const/4 v5, 0x0

    .line 1001
    .local v5, "issuerDomainPolicy":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    const/4 v6, 0x0

    .line 1004
    .local v6, "subjectDomainPolicy":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :try_start_1
    invoke-virtual {v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v7

    .line 1006
    .local v7, "mapping":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8

    move-object v5, v8

    .line 1007
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v6, v8

    .line 1013
    .end local v7    # "mapping":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    nop

    .line 1015
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    const-string v8, "2.5.29.32.0"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v9, 0x0

    if-nez v7, :cond_1

    .line 1021
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 998
    .end local v5    # "issuerDomainPolicy":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v6    # "subjectDomainPolicy":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1024
    .restart local v5    # "issuerDomainPolicy":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .restart local v6    # "subjectDomainPolicy":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_0
    new-instance v7, Ljava/security/cert/CertPathValidatorException;

    const-string v8, "SubjectDomainPolicy is anyPolicy"

    invoke-direct {v7, v8, v9, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v7

    .line 1018
    :cond_1
    new-instance v7, Ljava/security/cert/CertPathValidatorException;

    const-string v8, "IssuerDomainPolicy is anyPolicy"

    invoke-direct {v7, v8, v9, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v7

    .line 1009
    :catch_0
    move-exception v7

    .line 1011
    .local v7, "e":Ljava/lang/Exception;
    new-instance v8, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v9, "Policy mappings extension contents could not be decoded."

    invoke-direct {v8, v9, v7, p0, p1}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v8

    .line 1028
    .end local v3    # "mappings":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v4    # "j":I
    .end local v5    # "issuerDomainPolicy":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v6    # "subjectDomainPolicy":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_2
    return-void

    .line 989
    :catch_1
    move-exception v3

    .line 991
    .local v3, "ex":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v4, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Policy mappings extension could not be decoded."

    invoke-direct {v4, v5, v3, p0, p1}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4
.end method

.method protected static blacklist prepareNextCertG(Ljava/security/cert/CertPath;ILcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;)V
    .locals 9
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "nameConstraintValidator"    # Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 1577
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 1578
    .local v0, "certs":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 1582
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    .line 1585
    .local v2, "nc":Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraints;
    :try_start_0
    sget-object v3, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3

    .line 1587
    .local v3, "ncSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    if-eqz v3, :cond_0

    .line 1589
    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraints;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object v2, v4

    .line 1596
    .end local v3    # "ncSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :cond_0
    nop

    .line 1597
    if-eqz v2, :cond_2

    .line 1603
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraints;->getPermittedSubtrees()[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object v3

    .line 1604
    .local v3, "permitted":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;
    if-eqz v3, :cond_1

    .line 1608
    :try_start_1
    invoke-virtual {p2, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->intersectPermittedSubtree([Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1614
    goto :goto_0

    .line 1610
    :catch_0
    move-exception v4

    .line 1612
    .local v4, "ex":Ljava/lang/Exception;
    new-instance v5, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v6, "Permitted subtrees cannot be build from name constraints extension."

    invoke-direct {v5, v6, v4, p0, p1}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v5

    .line 1620
    .end local v4    # "ex":Ljava/lang/Exception;
    :cond_1
    :goto_0
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/NameConstraints;->getExcludedSubtrees()[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object v4

    .line 1621
    .local v4, "excluded":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;
    if-eqz v4, :cond_2

    .line 1623
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v6, v4

    if-eq v5, v6, :cond_2

    .line 1626
    :try_start_2
    aget-object v6, v4, v5

    invoke-virtual {p2, v6}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->addExcludedSubtree(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1632
    nop

    .line 1623
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1628
    :catch_1
    move-exception v6

    .line 1630
    .local v6, "ex":Ljava/lang/Exception;
    new-instance v7, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v8, "Excluded subtrees cannot be build from name constraints extension."

    invoke-direct {v7, v8, v6, p0, p1}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v7

    .line 1635
    .end local v3    # "permitted":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;
    .end local v4    # "excluded":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralSubtree;
    .end local v5    # "i":I
    .end local v6    # "ex":Ljava/lang/Exception;
    :cond_2
    return-void

    .line 1592
    :catch_2
    move-exception v3

    .line 1594
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Name constraints extension could not be decoded."

    invoke-direct {v4, v5, v3, p0, p1}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4
.end method

.method protected static blacklist prepareNextCertH1(Ljava/security/cert/CertPath;II)I
    .locals 3
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "explicitPolicy"    # I

    .line 2178
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 2179
    .local v0, "certs":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 2183
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2188
    if-eqz p2, :cond_0

    .line 2190
    add-int/lit8 v2, p2, -0x1

    return v2

    .line 2193
    :cond_0
    return p2
.end method

.method protected static blacklist prepareNextCertH2(Ljava/security/cert/CertPath;II)I
    .locals 3
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "policyMapping"    # I

    .line 2201
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 2202
    .local v0, "certs":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 2206
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2211
    if-eqz p2, :cond_0

    .line 2213
    add-int/lit8 v2, p2, -0x1

    return v2

    .line 2216
    :cond_0
    return p2
.end method

.method protected static blacklist prepareNextCertH3(Ljava/security/cert/CertPath;II)I
    .locals 3
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "inhibitAnyPolicy"    # I

    .line 2224
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 2225
    .local v0, "certs":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 2229
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2234
    if-eqz p2, :cond_0

    .line 2236
    add-int/lit8 v2, p2, -0x1

    return v2

    .line 2239
    :cond_0
    return p2
.end method

.method protected static blacklist prepareNextCertI1(Ljava/security/cert/CertPath;II)I
    .locals 7
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "explicitPolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 1469
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 1470
    .local v0, "certs":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 1474
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    .line 1477
    .local v2, "pc":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_0
    sget-object v3, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v3

    .line 1484
    nop

    .line 1488
    if-eqz v2, :cond_2

    .line 1490
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v3

    .line 1492
    .local v3, "policyConstraints":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1496
    :try_start_1
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v4

    .line 1497
    .local v4, "constraint":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v5

    if-nez v5, :cond_1

    .line 1499
    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v5
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1500
    .local v5, "tmpInt":I
    if-ge v5, p2, :cond_0

    .line 1502
    return v5

    .line 1504
    :cond_0
    goto :goto_1

    .line 1511
    .end local v4    # "constraint":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .end local v5    # "tmpInt":I
    :cond_1
    goto :goto_0

    .line 1507
    :catch_0
    move-exception v4

    .line 1509
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v6, "Policy constraints extension contents cannot be decoded."

    invoke-direct {v5, v6, v4, p0, p1}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v5

    .line 1514
    .end local v3    # "policyConstraints":Ljava/util/Enumeration;
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    :goto_1
    return p2

    .line 1480
    :catch_1
    move-exception v3

    .line 1482
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Policy constraints extension cannot be decoded."

    invoke-direct {v4, v5, v3, p0, p1}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4
.end method

.method protected static blacklist prepareNextCertI2(Ljava/security/cert/CertPath;II)I
    .locals 7
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "policyMapping"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 1523
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 1524
    .local v0, "certs":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 1528
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    .line 1531
    .local v2, "pc":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_0
    sget-object v3, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v3

    .line 1538
    nop

    .line 1542
    if-eqz v2, :cond_2

    .line 1544
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v3

    .line 1546
    .local v3, "policyConstraints":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1550
    :try_start_1
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v4

    .line 1551
    .local v4, "constraint":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 1553
    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v5
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1554
    .local v5, "tmpInt":I
    if-ge v5, p2, :cond_0

    .line 1556
    return v5

    .line 1558
    :cond_0
    goto :goto_1

    .line 1565
    .end local v4    # "constraint":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .end local v5    # "tmpInt":I
    :cond_1
    goto :goto_0

    .line 1561
    :catch_0
    move-exception v4

    .line 1563
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v6, "Policy constraints extension contents cannot be decoded."

    invoke-direct {v5, v6, v4, p0, p1}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v5

    .line 1568
    .end local v3    # "policyConstraints":Ljava/util/Enumeration;
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    :goto_1
    return p2

    .line 1534
    :catch_1
    move-exception v3

    .line 1536
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Policy constraints extension cannot be decoded."

    invoke-direct {v4, v5, v3, p0, p1}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4
.end method

.method protected static blacklist prepareNextCertJ(Ljava/security/cert/CertPath;II)I
    .locals 6
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "inhibitAnyPolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 1993
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 1994
    .local v0, "certs":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 1998
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    .line 2001
    .local v2, "iap":Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    :try_start_0
    sget-object v3, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 2008
    nop

    .line 2010
    if-eqz v2, :cond_0

    .line 2012
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v3

    .line 2014
    .local v3, "_inhibitAnyPolicy":I
    if-ge v3, p2, :cond_0

    .line 2016
    return v3

    .line 2019
    .end local v3    # "_inhibitAnyPolicy":I
    :cond_0
    return p2

    .line 2004
    :catch_0
    move-exception v3

    .line 2006
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Inhibit any-policy extension cannot be decoded."

    invoke-direct {v4, v5, v3, p0, p1}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4
.end method

.method protected static blacklist prepareNextCertK(Ljava/security/cert/CertPath;I)V
    .locals 6
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 2027
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 2028
    .local v0, "certs":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 2032
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    .line 2035
    .local v2, "bc":Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;
    :try_start_0
    sget-object v3, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 2042
    nop

    .line 2043
    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 2045
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2054
    return-void

    .line 2047
    :cond_0
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v5, "Not a CA certificate"

    invoke-direct {v4, v5, v3, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 2052
    :cond_1
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v5, "Intermediate certificate lacks BasicConstraints"

    invoke-direct {v4, v5, v3, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 2038
    :catch_0
    move-exception v3

    .line 2040
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Basic constraints extension cannot be decoded."

    invoke-direct {v4, v5, v3, p0, p1}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4
.end method

.method protected static blacklist prepareNextCertL(Ljava/security/cert/CertPath;II)I
    .locals 5
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "maxPathLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 2062
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 2063
    .local v0, "certs":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 2067
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2069
    if-lez p2, :cond_0

    .line 2074
    add-int/lit8 v2, p2, -0x1

    return v2

    .line 2071
    :cond_0
    new-instance v2, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const/4 v3, 0x0

    const-string v4, "Max path length not greater than zero"

    invoke-direct {v2, v4, v3, p0, p1}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2

    .line 2076
    :cond_1
    return p2
.end method

.method protected static blacklist prepareNextCertM(Ljava/security/cert/CertPath;II)I
    .locals 6
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "maxPathLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 2085
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 2086
    .local v0, "certs":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 2091
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    .line 2094
    .local v2, "bc":Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;
    :try_start_0
    sget-object v3, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 2101
    nop

    .line 2102
    if-eqz v2, :cond_0

    .line 2104
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;->getPathLenConstraint()Ljava/math/BigInteger;

    move-result-object v3

    .line 2106
    .local v3, "_pathLengthConstraint":Ljava/math/BigInteger;
    if-eqz v3, :cond_0

    .line 2108
    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    .line 2110
    .local v4, "_plc":I
    if-ge v4, p2, :cond_0

    .line 2112
    return v4

    .line 2116
    .end local v3    # "_pathLengthConstraint":Ljava/math/BigInteger;
    .end local v4    # "_plc":I
    :cond_0
    return p2

    .line 2097
    :catch_0
    move-exception v3

    .line 2099
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Basic constraints extension cannot be decoded."

    invoke-direct {v4, v5, v3, p0, p1}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4
.end method

.method protected static blacklist prepareNextCertN(Ljava/security/cert/CertPath;I)V
    .locals 6
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 2124
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 2125
    .local v0, "certs":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 2130
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v2

    .line 2132
    .local v2, "keyUsage":[Z
    if-eqz v2, :cond_1

    array-length v3, v2

    const/4 v4, 0x5

    if-le v3, v4, :cond_0

    aget-boolean v3, v2, v4

    if-eqz v3, :cond_0

    goto :goto_0

    .line 2134
    :cond_0
    new-instance v3, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const/4 v4, 0x0

    const-string v5, "Issuer certificate keyusage extension is critical and does not permit key signing."

    invoke-direct {v3, v5, v4, p0, p1}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    .line 2138
    :cond_1
    :goto_0
    return-void
.end method

.method protected static blacklist prepareNextCertO(Ljava/security/cert/CertPath;ILjava/util/Set;Ljava/util/List;)V
    .locals 7
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "criticalExtensions"    # Ljava/util/Set;
    .param p3, "pathCheckers"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 2147
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 2148
    .local v0, "certs":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 2154
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2155
    .local v2, "tmpIter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2159
    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/PKIXCertPathChecker;

    invoke-virtual {v3, v1, p2}, Ljava/security/cert/PKIXCertPathChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2164
    goto :goto_0

    .line 2161
    :catch_0
    move-exception v3

    .line 2163
    .local v3, "e":Ljava/security/cert/CertPathValidatorException;
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {v3}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/security/cert/CertPathValidatorException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-direct {v4, v5, v6, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 2166
    .end local v3    # "e":Ljava/security/cert/CertPathValidatorException;
    :cond_0
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2171
    return-void

    .line 2168
    :cond_1
    new-instance v3, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Certificate has unsupported critical extension: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, p0, p1}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3
.end method

.method protected static blacklist processCRLB1(Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V
    .locals 9
    .param p0, "dp"    # Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    .param p1, "cert"    # Ljava/lang/Object;
    .param p2, "crl"    # Ljava/security/cert/X509CRL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 291
    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 292
    .local v0, "idp":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    const/4 v1, 0x0

    .line 293
    .local v1, "isIndirect":Z
    if-eqz v0, :cond_0

    .line 295
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->isIndirectCRL()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 297
    const/4 v1, 0x1

    .line 304
    :cond_0
    :try_start_0
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getEncoded()[B

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 309
    .local v2, "issuerBytes":[B
    nop

    .line 311
    const/4 v3, 0x0

    .line 312
    .local v3, "matchIssuer":Z
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 314
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v4

    .line 315
    .local v4, "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_0
    array-length v6, v4

    if-ge v5, v6, :cond_3

    .line 317
    aget-object v6, v4, v5

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    .line 321
    :try_start_1
    aget-object v6, v4, v5

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v6

    invoke-static {v6, v2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v6, :cond_1

    .line 323
    const/4 v3, 0x1

    .line 330
    :cond_1
    goto :goto_1

    .line 326
    :catch_0
    move-exception v6

    .line 328
    .local v6, "e":Ljava/io/IOException;
    new-instance v7, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v8, "CRL issuer information from distribution point cannot be decoded."

    invoke-direct {v7, v8, v6}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 315
    .end local v6    # "e":Ljava/io/IOException;
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 333
    .end local v5    # "j":I
    :cond_3
    if-eqz v3, :cond_5

    if-eqz v1, :cond_4

    goto :goto_2

    .line 335
    :cond_4
    new-instance v5, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v6, "Distribution point contains cRLIssuer field but CRL is not indirect."

    invoke-direct {v5, v6}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 337
    :cond_5
    :goto_2
    if-eqz v3, :cond_6

    .line 341
    .end local v4    # "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    goto :goto_3

    .line 339
    .restart local v4    # "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    :cond_6
    new-instance v5, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v6, "CRL issuer of CRL does not match CRL issuer of distribution point."

    invoke-direct {v5, v6}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 344
    .end local v4    # "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    :cond_7
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v4

    .line 345
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jce/provider/PrincipalUtils;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v5

    .line 344
    invoke-virtual {v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 347
    const/4 v3, 0x1

    .line 350
    :cond_8
    :goto_3
    if-eqz v3, :cond_9

    .line 354
    return-void

    .line 352
    :cond_9
    new-instance v4, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v5, "Cannot find matching CRL issuer for certificate."

    invoke-direct {v4, v5}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 306
    .end local v2    # "issuerBytes":[B
    .end local v3    # "matchIssuer":Z
    :catch_1
    move-exception v2

    .line 308
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception encoding CRL issuer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected static blacklist processCRLB2(Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V
    .locals 11
    .param p0, "dp"    # Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    .param p1, "cert"    # Ljava/lang/Object;
    .param p2, "crl"    # Ljava/security/cert/X509CRL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 108
    const/4 v0, 0x0

    .line 111
    .local v0, "idp":Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_start_0
    sget-object v1, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {p2, v1}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-object v0, v1

    .line 117
    nop

    .line 120
    if-eqz v0, :cond_15

    .line 122
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getDistributionPoint()Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 125
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getDistributionPoint()Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v1

    .line 126
    .local v1, "dpName":Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v2, "names":Ljava/util/List;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v3

    if-nez v3, :cond_0

    .line 130
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;->getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v3

    .line 131
    .local v3, "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_0

    .line 133
    aget-object v5, v3, v4

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 136
    .end local v3    # "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .end local v4    # "j":I
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 138
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 141
    .local v3, "vec":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    :try_start_1
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v5

    .line 142
    .local v5, "e":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 144
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v3, v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 150
    .end local v5    # "e":Ljava/util/Enumeration;
    :cond_1
    nop

    .line 151
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;->getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 152
    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    new-instance v6, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v6, v3}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 147
    :catch_0
    move-exception v4

    .line 149
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v6, "Could not read CRL issuer."

    invoke-direct {v5, v6, v4}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 154
    .end local v3    # "vec":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    const/4 v3, 0x0

    .line 157
    .local v3, "matches":Z
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v5

    const-string v6, "No match for certificate CRL issuing distribution point name to cRLIssuer CRL distribution point."

    if-eqz v5, :cond_a

    .line 159
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v1

    .line 160
    const/4 v5, 0x0

    .line 161
    .local v5, "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v7

    if-nez v7, :cond_3

    .line 163
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;->getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v5

    .line 165
    :cond_3
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v7

    if-ne v7, v4, :cond_6

    .line 167
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 169
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v4

    move-object v5, v4

    .end local v5    # "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .local v4, "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    goto :goto_3

    .line 173
    .end local v4    # "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .restart local v5    # "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    :cond_4
    new-array v4, v4, [Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    .line 176
    .end local v5    # "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .restart local v4    # "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    const/4 v5, 0x0

    :try_start_2
    new-instance v7, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jce/provider/PrincipalUtils;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)V

    aput-object v7, v4, v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 181
    move-object v5, v4

    .line 183
    .end local v4    # "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .restart local v5    # "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    :goto_3
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_4
    array-length v7, v5

    if-ge v4, v7, :cond_6

    .line 185
    aget-object v7, v5, v4

    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v7

    .line 186
    .local v7, "e":Ljava/util/Enumeration;
    new-instance v8, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 187
    .local v8, "vec":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    :goto_5
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 189
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v8, v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_5

    .line 191
    :cond_5
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;->getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 192
    new-instance v9, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    new-instance v10, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v10, v8}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v10}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)V

    aput-object v9, v5, v4

    .line 183
    .end local v7    # "e":Ljava/util/Enumeration;
    .end local v8    # "vec":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 178
    .end local v5    # "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .local v4, "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    :catch_1
    move-exception v5

    .line 180
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Could not read certificate issuer."

    invoke-direct {v6, v7, v5}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 195
    .end local v4    # "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .local v5, "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    :cond_6
    if-eqz v5, :cond_8

    .line 197
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_6
    array-length v7, v5

    if-ge v4, v7, :cond_8

    .line 199
    aget-object v7, v5, v4

    invoke-interface {v2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 201
    const/4 v3, 0x1

    .line 202
    goto :goto_7

    .line 197
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 206
    .end local v4    # "j":I
    :cond_8
    :goto_7
    if-eqz v3, :cond_9

    .line 211
    .end local v5    # "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    goto :goto_a

    .line 208
    .restart local v5    # "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    :cond_9
    new-instance v4, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    invoke-direct {v4, v6}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 217
    .end local v5    # "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 222
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v4

    .line 223
    .local v4, "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_8
    array-length v7, v4

    if-ge v5, v7, :cond_c

    .line 225
    aget-object v7, v4, v5

    invoke-interface {v2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 227
    const/4 v3, 0x1

    .line 228
    goto :goto_9

    .line 223
    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 231
    .end local v5    # "j":I
    :cond_c
    :goto_9
    if-eqz v3, :cond_d

    goto :goto_a

    .line 233
    :cond_d
    new-instance v5, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    invoke-direct {v5, v6}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 219
    .end local v4    # "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    :cond_e
    new-instance v4, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v5, "Either the cRLIssuer or the distributionPoint field must be contained in DistributionPoint."

    invoke-direct {v4, v5}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 238
    .end local v1    # "dpName":Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPointName;
    .end local v2    # "names":Ljava/util/List;
    .end local v3    # "matches":Z
    :cond_f
    :goto_a
    const/4 v1, 0x0

    .line 241
    .local v1, "bc":Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;
    :try_start_3
    move-object v2, p1

    check-cast v2, Ljava/security/cert/X509Extension;

    sget-object v3, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v1, v2

    .line 247
    nop

    .line 249
    instance-of v2, p1, Ljava/security/cert/X509Certificate;

    if-eqz v2, :cond_13

    .line 252
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsUserCerts()Z

    move-result v2

    if-eqz v2, :cond_11

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v2

    if-nez v2, :cond_10

    goto :goto_b

    .line 254
    :cond_10
    new-instance v2, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v3, "CA Cert CRL only contains user certificates."

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 258
    :cond_11
    :goto_b
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsCACerts()Z

    move-result v2

    if-eqz v2, :cond_13

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v2

    if-eqz v2, :cond_12

    goto :goto_c

    .line 260
    :cond_12
    new-instance v2, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v3, "End CRL only contains CA certificates."

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 265
    :cond_13
    :goto_c
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts()Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_d

    .line 267
    :cond_14
    new-instance v2, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string/jumbo v3, "onlyContainsAttributeCerts boolean is asserted."

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 244
    :catch_2
    move-exception v2

    .line 246
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "Basic constraints extension could not be decoded."

    invoke-direct {v3, v4, v2}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 270
    .end local v1    # "bc":Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_15
    :goto_d
    return-void

    .line 114
    :catch_3
    move-exception v1

    .line 116
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v3, "Issuing distribution point extension could not be decoded."

    invoke-direct {v2, v3, v1}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected static blacklist processCRLC(Ljava/security/cert/X509CRL;Ljava/security/cert/X509CRL;Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;)V
    .locals 8
    .param p0, "deltaCRL"    # Ljava/security/cert/X509CRL;
    .param p1, "completeCRL"    # Ljava/security/cert/X509CRL;
    .param p2, "pkixParams"    # Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 652
    if-nez p0, :cond_0

    .line 654
    return-void

    .line 657
    :cond_0
    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->hasUnsupportedCriticalExtension()Z

    move-result v0

    if-nez v0, :cond_9

    .line 662
    const/4 v0, 0x0

    .line 665
    .local v0, "completeidp":Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_start_0
    sget-object v1, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-object v0, v2

    .line 671
    nop

    .line 673
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->isUseDeltasEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 676
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v2

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 682
    const/4 v2, 0x0

    .line 685
    .local v2, "deltaidp":Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_start_1
    invoke-static {p0, v1}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 692
    .end local v2    # "deltaidp":Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    .local v1, "deltaidp":Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    nop

    .line 694
    const/4 v2, 0x0

    .line 695
    .local v2, "match":Z
    if-nez v0, :cond_1

    .line 697
    if-nez v1, :cond_2

    .line 699
    const/4 v2, 0x1

    goto :goto_0

    .line 704
    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 706
    const/4 v2, 0x1

    .line 709
    :cond_2
    :goto_0
    if-eqz v2, :cond_6

    .line 716
    const/4 v3, 0x0

    .line 719
    .local v3, "completeKeyIdentifier":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    :try_start_2
    sget-object v4, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

    invoke-static {p1, v4}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5
    :try_end_2
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v3, v5

    .line 726
    nop

    .line 728
    const/4 v5, 0x0

    .line 731
    .local v5, "deltaKeyIdentifier":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    :try_start_3
    invoke-static {p0, v4}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4
    :try_end_3
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 738
    .end local v5    # "deltaKeyIdentifier":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .local v4, "deltaKeyIdentifier":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    nop

    .line 740
    if-eqz v3, :cond_5

    .line 745
    if-eqz v4, :cond_4

    .line 750
    invoke-virtual {v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    .line 752
    :cond_3
    new-instance v5, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v6, "Delta CRL authority key identifier does not match complete CRL authority key identifier."

    invoke-direct {v5, v6}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 747
    :cond_4
    new-instance v5, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v6, "Delta CRL authority key identifier is null."

    invoke-direct {v5, v6}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 742
    :cond_5
    new-instance v5, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v6, "CRL authority key identifier is null."

    invoke-direct {v5, v6}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 734
    .end local v4    # "deltaKeyIdentifier":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .restart local v5    # "deltaKeyIdentifier":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    :catch_0
    move-exception v4

    .line 736
    .local v4, "e":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v6, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Authority key identifier extension could not be extracted from delta CRL."

    invoke-direct {v6, v7, v4}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 722
    .end local v4    # "e":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .end local v5    # "deltaKeyIdentifier":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    :catch_1
    move-exception v4

    .line 724
    .restart local v4    # "e":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v5, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v6, "Authority key identifier extension could not be extracted from complete CRL."

    invoke-direct {v5, v6, v4}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 711
    .end local v3    # "completeKeyIdentifier":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .end local v4    # "e":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    :cond_6
    new-instance v3, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "Issuing distribution point extension from delta CRL and complete CRL does not match."

    invoke-direct {v3, v4}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 688
    .end local v1    # "deltaidp":Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    .local v2, "deltaidp":Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :catch_2
    move-exception v1

    .line 690
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "Issuing distribution point extension from delta CRL could not be decoded."

    invoke-direct {v3, v4, v1}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 678
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "deltaidp":Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :cond_7
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "Complete CRL issuer does not match delta CRL issuer."

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 756
    :cond_8
    :goto_1
    return-void

    .line 668
    :catch_3
    move-exception v1

    .line 670
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v2, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v3, "Issuing distribution point extension could not be decoded."

    invoke-direct {v2, v3, v1}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 659
    .end local v0    # "completeidp":Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_9
    new-instance v0, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v1, "delta CRL has unsupported critical extensions"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static blacklist processCRLD(Ljava/security/cert/X509CRL;Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;)Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;
    .locals 4
    .param p0, "crl"    # Ljava/security/cert/X509CRL;
    .param p1, "dp"    # Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 361
    const/4 v0, 0x0

    .line 364
    .local v0, "idp":Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_start_0
    sget-object v1, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 370
    nop

    .line 372
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getOnlySomeReasons()Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->getReasons()Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 374
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->getReasons()Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;)V

    new-instance v2, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getOnlySomeReasons()Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->intersect(Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;)Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;

    move-result-object v1

    return-object v1

    .line 377
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getOnlySomeReasons()Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->getReasons()Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v1

    if-nez v1, :cond_2

    .line 379
    sget-object v1, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->allReasons:Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;

    return-object v1

    .line 382
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->getReasons()Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v1

    if-nez v1, :cond_3

    .line 383
    sget-object v1, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->allReasons:Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;

    goto :goto_0

    .line 384
    :cond_3
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/DistributionPoint;->getReasons()Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;)V

    :goto_0
    if-nez v0, :cond_4

    .line 385
    sget-object v2, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->allReasons:Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;

    goto :goto_1

    .line 386
    :cond_4
    new-instance v2, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getOnlySomeReasons()Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;)V

    .line 384
    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->intersect(Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;)Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;

    move-result-object v1

    .line 382
    return-object v1

    .line 367
    :catch_0
    move-exception v1

    .line 369
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v3, "Issuing distribution point extension could not be decoded."

    invoke-direct {v2, v3, v1}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected static blacklist processCRLF(Ljava/security/cert/X509CRL;Ljava/lang/Object;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/List;Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/util/Set;
    .locals 17
    .param p0, "crl"    # Ljava/security/cert/X509CRL;
    .param p1, "cert"    # Ljava/lang/Object;
    .param p2, "defaultCRLSignCert"    # Ljava/security/cert/X509Certificate;
    .param p3, "defaultCRLSignKey"    # Ljava/security/PublicKey;
    .param p4, "paramsPKIX"    # Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .param p5, "certPathCerts"    # Ljava/util/List;
    .param p6, "helper"    # Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 459
    move-object/from16 v1, p2

    new-instance v0, Ljava/security/cert/X509CertSelector;

    invoke-direct {v0}, Ljava/security/cert/X509CertSelector;-><init>()V

    move-object v2, v0

    .line 462
    .local v2, "certSelector":Ljava/security/cert/X509CertSelector;
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getEncoded()[B

    move-result-object v0

    .line 463
    .local v0, "issuerPrincipal":[B
    invoke-virtual {v2, v0}, Ljava/security/cert/X509CertSelector;->setSubject([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_d

    .line 469
    .end local v0    # "issuerPrincipal":[B
    nop

    .line 471
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;

    invoke-direct {v0, v2}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;-><init>(Ljava/security/cert/CertSelector;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;->build()Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v3

    .line 474
    .local v3, "selector":Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    move-object v4, v0

    .line 477
    .local v4, "coll":Ljava/util/LinkedHashSet;
    :try_start_1
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCertificateStores()Ljava/util/List;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Ljava/util/LinkedHashSet;Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/util/List;)V

    .line 478
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCertStores()Ljava/util/List;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Ljava/util/LinkedHashSet;Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/util/List;)V
    :try_end_1
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_c

    .line 483
    nop

    .line 485
    invoke-virtual {v4, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 487
    invoke-virtual {v4}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 489
    .local v5, "cert_it":Ljava/util/Iterator;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 490
    .local v6, "validCerts":Ljava/util/List;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 492
    .local v7, "validKeys":Ljava/util/List;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 494
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/security/cert/X509Certificate;

    .line 500
    .local v8, "signingCert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v8, v1}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    move-object/from16 v9, p3

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 504
    goto :goto_0

    .line 512
    :cond_0
    move-object/from16 v9, p3

    :try_start_2
    new-instance v0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;

    const/4 v10, 0x1

    invoke-direct {v0, v10}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;-><init>(Z)V

    .line 513
    .local v0, "builder":Ljava/security/cert/CertPathBuilderSpi;
    new-instance v11, Ljava/security/cert/X509CertSelector;

    invoke-direct {v11}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 514
    .local v11, "tmpCertSelector":Ljava/security/cert/X509CertSelector;
    invoke-virtual {v11, v8}, Ljava/security/cert/X509CertSelector;->setCertificate(Ljava/security/cert/X509Certificate;)V

    .line 516
    new-instance v12, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    :try_end_2
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9

    move-object/from16 v13, p4

    :try_start_3
    invoke-direct {v12, v13}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;)V

    new-instance v14, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;

    invoke-direct {v14, v11}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;-><init>(Ljava/security/cert/CertSelector;)V

    .line 517
    invoke-virtual {v14}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;->build()Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->setTargetConstraints(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;)Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    move-result-object v12
    :try_end_3
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    .line 528
    .local v12, "paramsBuilder":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    move-object/from16 v14, p5

    :try_start_4
    invoke-interface {v14, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    const/4 v10, 0x0

    if-eqz v15, :cond_1

    .line 530
    invoke-virtual {v12, v10}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->setRevocationEnabled(Z)V

    goto :goto_1

    .line 534
    :cond_1
    const/4 v15, 0x1

    invoke-virtual {v12, v15}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->setRevocationEnabled(Z)V

    .line 537
    :goto_1
    new-instance v15, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;

    invoke-virtual {v12}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v10

    invoke-direct {v15, v10}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;)V

    invoke-virtual {v15}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->build()Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;

    move-result-object v10

    .line 539
    .local v10, "extParams":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    invoke-virtual {v0, v10}, Ljava/security/cert/CertPathBuilderSpi;->engineBuild(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object v15

    invoke-interface {v15}, Ljava/security/cert/CertPathBuilderResult;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v15

    invoke-virtual {v15}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v15

    .line 540
    .local v15, "certs":Ljava/util/List;
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 541
    move-object/from16 v1, p6

    move-object/from16 v16, v0

    const/4 v0, 0x0

    .end local v0    # "builder":Ljava/security/cert/CertPathBuilderSpi;
    .local v16, "builder":Ljava/security/cert/CertPathBuilderSpi;
    :try_start_5
    invoke-static {v15, v0, v1}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getNextWorkingKey(Ljava/util/List;ILcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 554
    nop

    .line 555
    .end local v8    # "signingCert":Ljava/security/cert/X509Certificate;
    .end local v10    # "extParams":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    .end local v11    # "tmpCertSelector":Ljava/security/cert/X509CertSelector;
    .end local v12    # "paramsBuilder":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .end local v15    # "certs":Ljava/util/List;
    .end local v16    # "builder":Ljava/security/cert/CertPathBuilderSpi;
    move-object/from16 v1, p2

    goto :goto_0

    .line 551
    .restart local v8    # "signingCert":Ljava/security/cert/X509Certificate;
    :catch_0
    move-exception v0

    goto :goto_4

    .line 547
    :catch_1
    move-exception v0

    goto :goto_7

    .line 543
    :catch_2
    move-exception v0

    goto :goto_a

    .line 551
    :catch_3
    move-exception v0

    goto :goto_3

    .line 547
    :catch_4
    move-exception v0

    goto :goto_6

    .line 543
    :catch_5
    move-exception v0

    goto :goto_9

    .line 551
    :catch_6
    move-exception v0

    goto :goto_2

    .line 547
    :catch_7
    move-exception v0

    goto :goto_5

    .line 543
    :catch_8
    move-exception v0

    goto :goto_8

    .line 551
    :catch_9
    move-exception v0

    move-object/from16 v13, p4

    :goto_2
    move-object/from16 v14, p5

    :goto_3
    move-object/from16 v1, p6

    .line 553
    .local v0, "e":Ljava/lang/Exception;
    :goto_4
    new-instance v10, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 547
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_a
    move-exception v0

    move-object/from16 v13, p4

    :goto_5
    move-object/from16 v14, p5

    :goto_6
    move-object/from16 v1, p6

    .line 549
    .local v0, "e":Ljava/security/cert/CertPathValidatorException;
    :goto_7
    new-instance v10, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v11, "Public key of issuer certificate of CRL could not be retrieved."

    invoke-direct {v10, v11, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 543
    .end local v0    # "e":Ljava/security/cert/CertPathValidatorException;
    :catch_b
    move-exception v0

    move-object/from16 v13, p4

    :goto_8
    move-object/from16 v14, p5

    :goto_9
    move-object/from16 v1, p6

    .line 545
    .local v0, "e":Ljava/security/cert/CertPathBuilderException;
    :goto_a
    new-instance v10, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v11, "CertPath for CRL signer failed to validate."

    invoke-direct {v10, v11, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 557
    .end local v0    # "e":Ljava/security/cert/CertPathBuilderException;
    .end local v8    # "signingCert":Ljava/security/cert/X509Certificate;
    :cond_2
    move-object/from16 v9, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v1, p6

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 559
    .local v0, "checkKeys":Ljava/util/Set;
    const/4 v8, 0x0

    .line 560
    .local v8, "lastException":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_b
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_5

    .line 562
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/security/cert/X509Certificate;

    .line 563
    .local v11, "signCert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v12

    .line 565
    .local v12, "keyUsage":[Z
    if-eqz v12, :cond_4

    array-length v15, v12

    const/4 v1, 0x6

    if-le v15, v1, :cond_3

    aget-boolean v1, v12, v1

    if-nez v1, :cond_4

    .line 567
    :cond_3
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v15, "Issuer certificate key usage extension does not permit CRL signing."

    invoke-direct {v1, v15}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    move-object v8, v1

    .end local v8    # "lastException":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .local v1, "lastException":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    goto :goto_c

    .line 572
    .end local v1    # "lastException":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v8    # "lastException":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    :cond_4
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 560
    .end local v11    # "signCert":Ljava/security/cert/X509Certificate;
    .end local v12    # "keyUsage":[Z
    :goto_c
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p6

    goto :goto_b

    .line 576
    .end local v10    # "i":I
    :cond_5
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz v8, :cond_6

    goto :goto_d

    .line 578
    :cond_6
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v10, "Cannot find a valid issuer certificate."

    invoke-direct {v1, v10}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 580
    :cond_7
    :goto_d
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    if-nez v8, :cond_8

    goto :goto_e

    .line 582
    :cond_8
    throw v8

    .line 585
    :cond_9
    :goto_e
    return-object v0

    .line 480
    .end local v0    # "checkKeys":Ljava/util/Set;
    .end local v5    # "cert_it":Ljava/util/Iterator;
    .end local v6    # "validCerts":Ljava/util/List;
    .end local v7    # "validKeys":Ljava/util/List;
    .end local v8    # "lastException":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    :catch_c
    move-exception v0

    move-object/from16 v9, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    .line 482
    .local v0, "e":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v5, "Issuer certificate for CRL cannot be searched."

    invoke-direct {v1, v5, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 465
    .end local v0    # "e":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .end local v3    # "selector":Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;
    .end local v4    # "coll":Ljava/util/LinkedHashSet;
    :catch_d
    move-exception v0

    move-object/from16 v9, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    .line 467
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v3, "Subject criteria for certificate selector to find issuer certificate for CRL could not be set."

    invoke-direct {v1, v3, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static blacklist processCRLG(Ljava/security/cert/X509CRL;Ljava/util/Set;)Ljava/security/PublicKey;
    .locals 4
    .param p0, "crl"    # Ljava/security/cert/X509CRL;
    .param p1, "keys"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 593
    const/4 v0, 0x0

    .line 594
    .local v0, "lastException":Ljava/lang/Exception;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 596
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/PublicKey;

    .line 599
    .local v2, "key":Ljava/security/PublicKey;
    :try_start_0
    invoke-virtual {p0, v2}, Ljava/security/cert/X509CRL;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    return-object v2

    .line 602
    :catch_0
    move-exception v3

    .line 604
    .local v3, "e":Ljava/lang/Exception;
    move-object v0, v3

    .line 606
    .end local v2    # "key":Ljava/security/PublicKey;
    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 607
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_0
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "Cannot verify CRL."

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static blacklist processCRLH(Ljava/util/Set;Ljava/security/PublicKey;)Ljava/security/cert/X509CRL;
    .locals 4
    .param p0, "deltacrls"    # Ljava/util/Set;
    .param p1, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 615
    const/4 v0, 0x0

    .line 617
    .local v0, "lastException":Ljava/lang/Exception;
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 619
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509CRL;

    .line 622
    .local v2, "crl":Ljava/security/cert/X509CRL;
    :try_start_0
    invoke-virtual {v2, p1}, Ljava/security/cert/X509CRL;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    return-object v2

    .line 625
    :catch_0
    move-exception v3

    .line 627
    .local v3, "e":Ljava/lang/Exception;
    move-object v0, v3

    .line 629
    .end local v2    # "crl":Ljava/security/cert/X509CRL;
    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 631
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_0
    if-nez v0, :cond_1

    .line 635
    const/4 v1, 0x0

    return-object v1

    .line 633
    :cond_1
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "Cannot verify delta CRL."

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static blacklist processCRLI(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;)V
    .locals 1
    .param p0, "validDate"    # Ljava/util/Date;
    .param p1, "deltacrl"    # Ljava/security/cert/X509CRL;
    .param p2, "cert"    # Ljava/lang/Object;
    .param p3, "certStatus"    # Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;
    .param p4, "pkixParams"    # Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 766
    invoke-virtual {p4}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->isUseDeltasEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 768
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getCertStatus(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;)V

    .line 770
    :cond_0
    return-void
.end method

.method protected static blacklist processCRLJ(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;)V
    .locals 2
    .param p0, "validDate"    # Ljava/util/Date;
    .param p1, "completecrl"    # Ljava/security/cert/X509CRL;
    .param p2, "cert"    # Ljava/lang/Object;
    .param p3, "certStatus"    # Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 779
    invoke-virtual {p3}, Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 781
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getCertStatus(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lcom/android/internal/org/bouncycastle/jce/provider/CertStatus;)V

    .line 783
    :cond_0
    return-void
.end method

.method protected static blacklist processCertA(Ljava/security/cert/CertPath;Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationChecker;ILjava/security/PublicKey;ZLcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Ljava/security/cert/X509Certificate;)V
    .locals 17
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "paramsPKIX"    # Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .param p2, "validityDate"    # Ljava/util/Date;
    .param p3, "revocationChecker"    # Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationChecker;
    .param p4, "index"    # I
    .param p5, "workingPublicKey"    # Ljava/security/PublicKey;
    .param p6, "verificationAlreadyPerformed"    # Z
    .param p7, "workingIssuerName"    # Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .param p8, "sign"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 1395
    move-object/from16 v8, p0

    move-object/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v11, p7

    const-string v1, "Could not validate certificate: "

    invoke-virtual/range {p0 .. p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v12

    .line 1396
    .local v12, "certs":Ljava/util/List;
    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/security/cert/X509Certificate;

    .line 1400
    .local v13, "cert":Ljava/security/cert/X509Certificate;
    if-nez p6, :cond_0

    .line 1406
    nop

    .line 1407
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1406
    move-object/from16 v14, p5

    :try_start_1
    invoke-static {v13, v14, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->verifyX509Certificate(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1412
    goto :goto_1

    .line 1409
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v14, p5

    .line 1411
    .local v0, "e":Ljava/security/GeneralSecurityException;
    :goto_0
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v2, "Could not validate certificate signature."

    invoke-direct {v1, v2, v0, v8, v10}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 1400
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :cond_0
    move-object/from16 v14, p5

    .line 1418
    :goto_1
    nop

    .line 1419
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->getValidityModel()I

    move-result v0
    :try_end_2
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_5

    .line 1418
    move-object/from16 v15, p2

    :try_start_3
    invoke-static {v15, v0, v8, v10}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getValidCertDateFromValidityModel(Ljava/util/Date;ILjava/security/cert/CertPath;I)Ljava/util/Date;

    move-result-object v0
    :try_end_3
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_3 .. :try_end_3} :catch_4

    move-object v7, v0

    .line 1424
    .local v7, "validCertDate":Ljava/util/Date;
    nop

    .line 1430
    :try_start_4
    invoke-virtual {v13, v7}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V
    :try_end_4
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1439
    nop

    .line 1444
    if-eqz v9, :cond_1

    .line 1446
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    move-object v1, v0

    move-object/from16 v2, p1

    move-object v3, v7

    move-object/from16 v4, p0

    move/from16 v5, p4

    move-object/from16 v6, p8

    move-object/from16 v16, v7

    .end local v7    # "validCertDate":Ljava/util/Date;
    .local v16, "validCertDate":Ljava/util/Date;
    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;Ljava/security/cert/CertPath;ILjava/security/cert/X509Certificate;Ljava/security/PublicKey;)V

    invoke-interface {v9, v0}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationChecker;->initialize(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;)V

    .line 1449
    invoke-interface {v9, v13}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationChecker;->check(Ljava/security/cert/Certificate;)V

    goto :goto_2

    .line 1444
    .end local v16    # "validCertDate":Ljava/util/Date;
    .restart local v7    # "validCertDate":Ljava/util/Date;
    :cond_1
    move-object/from16 v16, v7

    .line 1455
    .end local v7    # "validCertDate":Ljava/util/Date;
    .restart local v16    # "validCertDate":Ljava/util/Date;
    :goto_2
    invoke-static {v13}, Lcom/android/internal/org/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509Certificate;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    .line 1456
    .local v0, "issuer":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    invoke-virtual {v0, v11}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1461
    return-void

    .line 1458
    :cond_2
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IssuerName("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") does not match SubjectName("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") of signing certificate."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v8, v10}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 1436
    .end local v0    # "issuer":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .end local v16    # "validCertDate":Ljava/util/Date;
    .restart local v7    # "validCertDate":Ljava/util/Date;
    :catch_2
    move-exception v0

    move-object/from16 v16, v7

    move-object v2, v0

    .end local v7    # "validCertDate":Ljava/util/Date;
    .restart local v16    # "validCertDate":Ljava/util/Date;
    move-object v0, v2

    .line 1438
    .local v0, "e":Ljava/security/cert/CertificateNotYetValidException;
    new-instance v2, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/security/cert/CertificateNotYetValidException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0, v8, v10}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2

    .line 1432
    .end local v0    # "e":Ljava/security/cert/CertificateNotYetValidException;
    .end local v16    # "validCertDate":Ljava/util/Date;
    .restart local v7    # "validCertDate":Ljava/util/Date;
    :catch_3
    move-exception v0

    move-object/from16 v16, v7

    move-object v2, v0

    .end local v7    # "validCertDate":Ljava/util/Date;
    .restart local v16    # "validCertDate":Ljava/util/Date;
    move-object v0, v2

    .line 1434
    .local v0, "e":Ljava/security/cert/CertificateExpiredException;
    new-instance v2, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/security/cert/CertificateExpiredException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0, v8, v10}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2

    .line 1421
    .end local v0    # "e":Ljava/security/cert/CertificateExpiredException;
    .end local v16    # "validCertDate":Ljava/util/Date;
    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    move-object/from16 v15, p2

    .line 1423
    .local v0, "e":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    :goto_3
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v2, "Could not validate time of certificate."

    invoke-direct {v1, v2, v0, v8, v10}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1
.end method

.method protected static blacklist processCertBC(Ljava/security/cert/CertPath;ILcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;Z)V
    .locals 17
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "nameConstraintValidator"    # Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .param p3, "isForCRLCheck"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 1083
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {p0 .. p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v4

    .line 1084
    .local v4, "certs":Ljava/util/List;
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 1085
    .local v5, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    .line 1087
    .local v6, "n":I
    sub-int v7, v6, v2

    .line 1096
    .local v7, "i":I
    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-lt v7, v6, :cond_0

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v16, v4

    goto/16 :goto_3

    .line 1098
    :cond_1
    :goto_0
    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/jce/provider/PrincipalUtils;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v8

    .line 1103
    .local v8, "principal":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    :try_start_0
    invoke-static {v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    move-object v9, v0

    .line 1109
    .local v9, "dns":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    nop

    .line 1113
    :try_start_1
    invoke-virtual {v3, v9}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkPermittedDN(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 1114
    invoke-virtual {v3, v9}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkExcludedDN(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    :try_end_1
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException; {:try_start_1 .. :try_end_1} :catch_4

    .line 1120
    nop

    .line 1122
    const/4 v10, 0x0

    .line 1125
    .local v10, "altName":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;
    :try_start_2
    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    invoke-static {v5, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object v10, v0

    .line 1132
    nop

    .line 1133
    invoke-static {v9}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    sget-object v11, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;->EmailAddress:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v11}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getRDNs(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    move-result-object v11

    .line 1134
    .local v11, "emails":[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;
    const/4 v0, 0x0

    move v12, v0

    .local v12, "eI":I
    :goto_1
    array-length v0, v11

    if-eq v12, v0, :cond_2

    .line 1137
    aget-object v0, v11, v12

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;->getFirst()Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/AttributeTypeAndValue;->getValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1String;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v13

    .line 1138
    .local v13, "email":Ljava/lang/String;
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    const/4 v14, 0x1

    invoke-direct {v0, v14, v13}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;-><init>(ILjava/lang/String;)V

    move-object v14, v0

    .line 1141
    .local v14, "emailAsGeneralName":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    :try_start_3
    invoke-virtual {v3, v14}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkPermitted(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;)V

    .line 1142
    invoke-virtual {v3, v14}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkExcluded(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;)V
    :try_end_3
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1148
    nop

    .line 1134
    .end local v13    # "email":Ljava/lang/String;
    .end local v14    # "emailAsGeneralName":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1144
    .restart local v13    # "email":Ljava/lang/String;
    .restart local v14    # "emailAsGeneralName":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    :catch_0
    move-exception v0

    .line 1146
    .local v0, "ex":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
    new-instance v15, Ljava/security/cert/CertPathValidatorException;

    move-object/from16 v16, v4

    .end local v4    # "certs":Ljava/util/List;
    .local v16, "certs":Ljava/util/List;
    const-string v4, "Subtree check for certificate subject alternative email failed."

    invoke-direct {v15, v4, v0, v1, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v15

    .line 1134
    .end local v0    # "ex":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
    .end local v13    # "email":Ljava/lang/String;
    .end local v14    # "emailAsGeneralName":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .end local v16    # "certs":Ljava/util/List;
    .restart local v4    # "certs":Ljava/util/List;
    :cond_2
    move-object/from16 v16, v4

    .line 1150
    .end local v4    # "certs":Ljava/util/List;
    .end local v12    # "eI":I
    .restart local v16    # "certs":Ljava/util/List;
    if-eqz v10, :cond_3

    .line 1152
    const/4 v4, 0x0

    .line 1155
    .local v4, "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    :try_start_4
    invoke-virtual {v10}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object v4, v0

    .line 1161
    nop

    .line 1162
    const/4 v0, 0x0

    move v12, v0

    .local v12, "j":I
    :goto_2
    array-length v0, v4

    if-ge v12, v0, :cond_3

    .line 1167
    :try_start_5
    aget-object v0, v4, v12

    invoke-virtual {v3, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkPermitted(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;)V

    .line 1168
    aget-object v0, v4, v12

    invoke-virtual {v3, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkExcluded(Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;)V
    :try_end_5
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1174
    nop

    .line 1162
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 1170
    :catch_1
    move-exception v0

    .line 1172
    .local v0, "e":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
    new-instance v13, Ljava/security/cert/CertPathValidatorException;

    const-string v14, "Subtree check for certificate subject alternative name failed."

    invoke-direct {v13, v14, v0, v1, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v13

    .line 1157
    .end local v0    # "e":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
    .end local v12    # "j":I
    :catch_2
    move-exception v0

    move-object v12, v0

    move-object v0, v12

    .line 1159
    .local v0, "e":Ljava/lang/Exception;
    new-instance v12, Ljava/security/cert/CertPathValidatorException;

    const-string v13, "Subject alternative name contents could not be decoded."

    invoke-direct {v12, v13, v0, v1, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v12

    .line 1178
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "genNames":[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .end local v8    # "principal":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .end local v9    # "dns":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v10    # "altName":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;
    .end local v11    # "emails":[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;
    :cond_3
    :goto_3
    return-void

    .line 1128
    .end local v16    # "certs":Ljava/util/List;
    .local v4, "certs":Ljava/util/List;
    .restart local v8    # "principal":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .restart local v9    # "dns":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v10    # "altName":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;
    :catch_3
    move-exception v0

    move-object/from16 v16, v4

    .line 1130
    .end local v4    # "certs":Ljava/util/List;
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v16    # "certs":Ljava/util/List;
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v11, "Subject alternative name extension could not be decoded."

    invoke-direct {v4, v11, v0, v1, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 1116
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v10    # "altName":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;
    .end local v16    # "certs":Ljava/util/List;
    .restart local v4    # "certs":Ljava/util/List;
    :catch_4
    move-exception v0

    move-object/from16 v16, v4

    .line 1118
    .end local v4    # "certs":Ljava/util/List;
    .local v0, "e":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
    .restart local v16    # "certs":Ljava/util/List;
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v10, "Subtree check for certificate subject failed."

    invoke-direct {v4, v10, v0, v1, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 1105
    .end local v0    # "e":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
    .end local v9    # "dns":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v16    # "certs":Ljava/util/List;
    .restart local v4    # "certs":Ljava/util/List;
    :catch_5
    move-exception v0

    move-object/from16 v16, v4

    move-object v4, v0

    .end local v4    # "certs":Ljava/util/List;
    .restart local v16    # "certs":Ljava/util/List;
    move-object v0, v4

    .line 1107
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v9, "Exception extracting subject name when checking subtrees."

    invoke-direct {v4, v9, v0, v1, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4
.end method

.method protected static blacklist processCertD(Ljava/security/cert/CertPath;ILjava/util/Set;Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;IZ)Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .locals 32
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "acceptablePolicies"    # Ljava/util/Set;
    .param p3, "validPolicyTree"    # Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .param p4, "policyNodes"    # [Ljava/util/List;
    .param p5, "inhibitAnyPolicy"    # I
    .param p6, "isForCRLCheck"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 1190
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    invoke-virtual/range {p0 .. p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v5

    .line 1191
    .local v5, "certs":Ljava/util/List;
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 1192
    .local v6, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    .line 1194
    .local v7, "n":I
    sub-int v15, v7, v2

    .line 1199
    .local v15, "i":I
    const/4 v8, 0x0

    .line 1202
    .local v8, "certPolicies":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_0
    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v16, v0

    .line 1209
    .end local v8    # "certPolicies":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .local v16, "certPolicies":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    nop

    .line 1210
    if-eqz v16, :cond_16

    if-eqz p3, :cond_16

    .line 1215
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v8

    .line 1216
    .local v8, "e":Ljava/util/Enumeration;
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v14, v0

    .line 1218
    .local v14, "pols":Ljava/util/Set;
    :goto_0
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    const-string v9, "2.5.29.32.0"

    if-eqz v0, :cond_1

    .line 1220
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;

    move-result-object v10

    .line 1221
    .local v10, "pInfo":Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;
    invoke-virtual {v10}, Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v11

    .line 1223
    .local v11, "pOid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v11}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1225
    invoke-virtual {v11}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1227
    const/4 v9, 0x0

    .line 1230
    .local v9, "pq":Ljava/util/Set;
    :try_start_1
    invoke-virtual {v10}, Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getQualifierSet(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;

    move-result-object v0
    :try_end_1
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1236
    .end local v9    # "pq":Ljava/util/Set;
    .local v0, "pq":Ljava/util/Set;
    nop

    .line 1238
    invoke-static {v15, v4, v11, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->processCertD1i(I[Ljava/util/List;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Set;)Z

    move-result v9

    .line 1240
    .local v9, "match":Z
    if-nez v9, :cond_0

    .line 1242
    invoke-static {v15, v4, v11, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->processCertD1ii(I[Ljava/util/List;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Set;)V

    goto :goto_1

    .line 1232
    .end local v0    # "pq":Ljava/util/Set;
    .local v9, "pq":Ljava/util/Set;
    :catch_0
    move-exception v0

    .line 1234
    .local v0, "ex":Ljava/security/cert/CertPathValidatorException;
    new-instance v12, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v13, "Policy qualifier info set could not be build."

    invoke-direct {v12, v13, v0, v1, v2}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v12

    .line 1245
    .end local v0    # "ex":Ljava/security/cert/CertPathValidatorException;
    .end local v9    # "pq":Ljava/util/Set;
    .end local v10    # "pInfo":Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;
    .end local v11    # "pOid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_0
    :goto_1
    goto :goto_0

    .line 1247
    :cond_1
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {v3, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    .line 1254
    :cond_2
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1255
    .local v0, "it":Ljava/util/Iterator;
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 1257
    .local v10, "t1":Ljava/util/Set;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1259
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 1261
    .local v11, "o":Ljava/lang/Object;
    invoke-interface {v14, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1263
    invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1265
    .end local v11    # "o":Ljava/lang/Object;
    :cond_3
    goto :goto_2

    .line 1266
    :cond_4
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->clear()V

    .line 1267
    invoke-interface {v3, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    .line 1249
    .end local v0    # "it":Ljava/util/Iterator;
    .end local v10    # "t1":Ljava/util/Set;
    :cond_5
    :goto_3
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->clear()V

    .line 1250
    invoke-interface {v3, v14}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1273
    :goto_4
    if-gtz p5, :cond_8

    if-lt v15, v7, :cond_6

    if-eqz p6, :cond_7

    :cond_6
    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_5

    .line 1339
    :cond_7
    move-object/from16 v30, v14

    move/from16 v31, v15

    goto/16 :goto_d

    .line 1275
    :cond_8
    :goto_5
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 1277
    .end local v8    # "e":Ljava/util/Enumeration;
    .local v0, "e":Ljava/util/Enumeration;
    :goto_6
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_11

    .line 1279
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;

    move-result-object v17

    .line 1281
    .local v17, "pInfo":Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 1283
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getQualifierSet(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;

    move-result-object v18

    .line 1284
    .local v18, "_apq":Ljava/util/Set;
    add-int/lit8 v8, v15, -0x1

    aget-object v13, v4, v8

    .line 1286
    .local v13, "_nodes":Ljava/util/List;
    const/4 v8, 0x0

    move v12, v8

    .local v12, "k":I
    :goto_7
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v8

    if-ge v12, v8, :cond_f

    .line 1288
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v11, v8

    check-cast v11, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1290
    .local v11, "_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v11}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->getExpectedPolicies()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .line 1291
    .local v19, "_policySetIter":Ljava/util/Iterator;
    :goto_8
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 1293
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 1296
    .local v10, "_tmp":Ljava/lang/Object;
    instance-of v8, v10, Ljava/lang/String;

    if-eqz v8, :cond_9

    .line 1298
    move-object v8, v10

    check-cast v8, Ljava/lang/String;

    move-object v9, v8

    .local v8, "_policy":Ljava/lang/String;
    goto :goto_9

    .line 1300
    .end local v8    # "_policy":Ljava/lang/String;
    :cond_9
    instance-of v8, v10, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v8, :cond_d

    .line 1302
    move-object v8, v10

    check-cast v8, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    .line 1309
    .local v9, "_policy":Ljava/lang/String;
    :goto_9
    const/4 v8, 0x0

    .line 1310
    .local v8, "_found":Z
    invoke-virtual {v11}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v20

    move/from16 v21, v8

    .line 1312
    .end local v8    # "_found":Z
    .local v20, "_childrenIter":Ljava/util/Iterator;
    .local v21, "_found":Z
    :goto_a
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1314
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1316
    .local v8, "_child":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    move-object/from16 v22, v0

    .end local v0    # "e":Ljava/util/Enumeration;
    .local v22, "e":Ljava/util/Enumeration;
    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1318
    const/4 v0, 0x1

    move/from16 v21, v0

    .line 1320
    .end local v8    # "_child":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_a
    move-object/from16 v0, v22

    goto :goto_a

    .line 1322
    .end local v22    # "e":Ljava/util/Enumeration;
    .restart local v0    # "e":Ljava/util/Enumeration;
    :cond_b
    move-object/from16 v22, v0

    .end local v0    # "e":Ljava/util/Enumeration;
    .restart local v22    # "e":Ljava/util/Enumeration;
    if-nez v21, :cond_c

    .line 1324
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1325
    .local v0, "_newChildExpectedPolicies":Ljava/util/Set;
    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1327
    new-instance v23, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    const/16 v25, 0x0

    move-object/from16 v8, v23

    move-object/from16 v26, v9

    .end local v9    # "_policy":Ljava/lang/String;
    .local v26, "_policy":Ljava/lang/String;
    move-object/from16 v9, v24

    move-object/from16 v24, v10

    .end local v10    # "_tmp":Ljava/lang/Object;
    .local v24, "_tmp":Ljava/lang/Object;
    move v10, v15

    move-object/from16 v27, v11

    .end local v11    # "_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v27, "_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    move-object v11, v0

    move/from16 v28, v12

    .end local v12    # "k":I
    .local v28, "k":I
    move-object/from16 v12, v27

    move-object/from16 v29, v13

    .end local v13    # "_nodes":Ljava/util/List;
    .local v29, "_nodes":Ljava/util/List;
    move-object/from16 v13, v18

    move-object/from16 v30, v14

    .end local v14    # "pols":Ljava/util/Set;
    .local v30, "pols":Ljava/util/Set;
    move-object/from16 v14, v26

    move/from16 v31, v15

    .end local v15    # "i":I
    .local v31, "i":I
    move/from16 v15, v25

    invoke-direct/range {v8 .. v15}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 1329
    .local v8, "_newChild":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    move-object/from16 v9, v27

    .end local v27    # "_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v9, "_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v9, v8}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 1330
    aget-object v10, v4, v31

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 1322
    .end local v0    # "_newChildExpectedPolicies":Ljava/util/Set;
    .end local v8    # "_newChild":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v24    # "_tmp":Ljava/lang/Object;
    .end local v26    # "_policy":Ljava/lang/String;
    .end local v28    # "k":I
    .end local v29    # "_nodes":Ljava/util/List;
    .end local v30    # "pols":Ljava/util/Set;
    .end local v31    # "i":I
    .local v9, "_policy":Ljava/lang/String;
    .restart local v10    # "_tmp":Ljava/lang/Object;
    .restart local v11    # "_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v12    # "k":I
    .restart local v13    # "_nodes":Ljava/util/List;
    .restart local v14    # "pols":Ljava/util/Set;
    .restart local v15    # "i":I
    :cond_c
    move-object/from16 v26, v9

    move-object/from16 v24, v10

    move-object v9, v11

    move/from16 v28, v12

    move-object/from16 v29, v13

    move-object/from16 v30, v14

    move/from16 v31, v15

    .line 1332
    .end local v10    # "_tmp":Ljava/lang/Object;
    .end local v11    # "_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v12    # "k":I
    .end local v13    # "_nodes":Ljava/util/List;
    .end local v14    # "pols":Ljava/util/Set;
    .end local v15    # "i":I
    .end local v20    # "_childrenIter":Ljava/util/Iterator;
    .end local v21    # "_found":Z
    .local v9, "_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v28    # "k":I
    .restart local v29    # "_nodes":Ljava/util/List;
    .restart local v30    # "pols":Ljava/util/Set;
    .restart local v31    # "i":I
    :goto_b
    move-object v11, v9

    move-object/from16 v0, v22

    move/from16 v12, v28

    move-object/from16 v13, v29

    move-object/from16 v14, v30

    move/from16 v15, v31

    goto/16 :goto_8

    .line 1300
    .end local v9    # "_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v22    # "e":Ljava/util/Enumeration;
    .end local v28    # "k":I
    .end local v29    # "_nodes":Ljava/util/List;
    .end local v30    # "pols":Ljava/util/Set;
    .end local v31    # "i":I
    .local v0, "e":Ljava/util/Enumeration;
    .restart local v10    # "_tmp":Ljava/lang/Object;
    .restart local v11    # "_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v12    # "k":I
    .restart local v13    # "_nodes":Ljava/util/List;
    .restart local v14    # "pols":Ljava/util/Set;
    .restart local v15    # "i":I
    :cond_d
    move-object/from16 v22, v0

    move-object/from16 v24, v10

    move-object v9, v11

    move/from16 v28, v12

    move-object/from16 v29, v13

    move-object/from16 v30, v14

    move/from16 v31, v15

    .end local v0    # "e":Ljava/util/Enumeration;
    .end local v10    # "_tmp":Ljava/lang/Object;
    .end local v11    # "_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v12    # "k":I
    .end local v13    # "_nodes":Ljava/util/List;
    .end local v14    # "pols":Ljava/util/Set;
    .end local v15    # "i":I
    .restart local v9    # "_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v22    # "e":Ljava/util/Enumeration;
    .restart local v24    # "_tmp":Ljava/lang/Object;
    .restart local v28    # "k":I
    .restart local v29    # "_nodes":Ljava/util/List;
    .restart local v30    # "pols":Ljava/util/Set;
    .restart local v31    # "i":I
    goto/16 :goto_8

    .line 1291
    .end local v9    # "_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v22    # "e":Ljava/util/Enumeration;
    .end local v24    # "_tmp":Ljava/lang/Object;
    .end local v28    # "k":I
    .end local v29    # "_nodes":Ljava/util/List;
    .end local v30    # "pols":Ljava/util/Set;
    .end local v31    # "i":I
    .restart local v0    # "e":Ljava/util/Enumeration;
    .restart local v11    # "_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v12    # "k":I
    .restart local v13    # "_nodes":Ljava/util/List;
    .restart local v14    # "pols":Ljava/util/Set;
    .restart local v15    # "i":I
    :cond_e
    move-object/from16 v22, v0

    move-object v9, v11

    move/from16 v28, v12

    move-object/from16 v29, v13

    move-object/from16 v30, v14

    move/from16 v31, v15

    .line 1286
    .end local v0    # "e":Ljava/util/Enumeration;
    .end local v11    # "_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v12    # "k":I
    .end local v13    # "_nodes":Ljava/util/List;
    .end local v14    # "pols":Ljava/util/Set;
    .end local v15    # "i":I
    .end local v19    # "_policySetIter":Ljava/util/Iterator;
    .restart local v22    # "e":Ljava/util/Enumeration;
    .restart local v28    # "k":I
    .restart local v29    # "_nodes":Ljava/util/List;
    .restart local v30    # "pols":Ljava/util/Set;
    .restart local v31    # "i":I
    add-int/lit8 v12, v28, 0x1

    .end local v28    # "k":I
    .restart local v12    # "k":I
    goto/16 :goto_7

    .end local v22    # "e":Ljava/util/Enumeration;
    .end local v29    # "_nodes":Ljava/util/List;
    .end local v30    # "pols":Ljava/util/Set;
    .end local v31    # "i":I
    .restart local v0    # "e":Ljava/util/Enumeration;
    .restart local v13    # "_nodes":Ljava/util/List;
    .restart local v14    # "pols":Ljava/util/Set;
    .restart local v15    # "i":I
    :cond_f
    move-object/from16 v22, v0

    move/from16 v28, v12

    move-object/from16 v29, v13

    move-object/from16 v30, v14

    move/from16 v31, v15

    .line 1334
    .end local v0    # "e":Ljava/util/Enumeration;
    .end local v12    # "k":I
    .end local v13    # "_nodes":Ljava/util/List;
    .end local v14    # "pols":Ljava/util/Set;
    .end local v15    # "i":I
    .restart local v22    # "e":Ljava/util/Enumeration;
    .restart local v29    # "_nodes":Ljava/util/List;
    .restart local v30    # "pols":Ljava/util/Set;
    .restart local v31    # "i":I
    goto :goto_c

    .line 1281
    .end local v18    # "_apq":Ljava/util/Set;
    .end local v22    # "e":Ljava/util/Enumeration;
    .end local v29    # "_nodes":Ljava/util/List;
    .end local v30    # "pols":Ljava/util/Set;
    .end local v31    # "i":I
    .restart local v0    # "e":Ljava/util/Enumeration;
    .restart local v14    # "pols":Ljava/util/Set;
    .restart local v15    # "i":I
    :cond_10
    move-object/from16 v22, v0

    move-object/from16 v30, v14

    move/from16 v31, v15

    .line 1336
    .end local v0    # "e":Ljava/util/Enumeration;
    .end local v14    # "pols":Ljava/util/Set;
    .end local v15    # "i":I
    .end local v17    # "pInfo":Lcom/android/internal/org/bouncycastle/asn1/x509/PolicyInformation;
    .restart local v22    # "e":Ljava/util/Enumeration;
    .restart local v30    # "pols":Ljava/util/Set;
    .restart local v31    # "i":I
    goto/16 :goto_6

    .line 1277
    .end local v22    # "e":Ljava/util/Enumeration;
    .end local v30    # "pols":Ljava/util/Set;
    .end local v31    # "i":I
    .restart local v0    # "e":Ljava/util/Enumeration;
    .restart local v14    # "pols":Ljava/util/Set;
    .restart local v15    # "i":I
    :cond_11
    move-object/from16 v22, v0

    move-object/from16 v30, v14

    move/from16 v31, v15

    .line 1339
    .end local v0    # "e":Ljava/util/Enumeration;
    .end local v14    # "pols":Ljava/util/Set;
    .end local v15    # "i":I
    .restart local v22    # "e":Ljava/util/Enumeration;
    .restart local v30    # "pols":Ljava/util/Set;
    .restart local v31    # "i":I
    :goto_c
    move-object/from16 v8, v22

    .end local v22    # "e":Ljava/util/Enumeration;
    .local v8, "e":Ljava/util/Enumeration;
    :goto_d
    move-object/from16 v0, p3

    .line 1343
    .local v0, "_validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    add-int/lit8 v15, v31, -0x1

    .local v15, "j":I
    :goto_e
    if-ltz v15, :cond_14

    .line 1345
    aget-object v9, v4, v15

    .line 1347
    .local v9, "nodes":Ljava/util/List;
    const/4 v10, 0x0

    .local v10, "k":I
    :goto_f
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_13

    .line 1349
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1350
    .local v11, "node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v11}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v12

    if-nez v12, :cond_12

    .line 1352
    invoke-static {v0, v4, v11}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v0

    .line 1354
    if-nez v0, :cond_12

    .line 1356
    goto :goto_10

    .line 1347
    .end local v11    # "node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_12
    add-int/lit8 v10, v10, 0x1

    goto :goto_f

    .line 1343
    .end local v9    # "nodes":Ljava/util/List;
    .end local v10    # "k":I
    :cond_13
    :goto_10
    add-int/lit8 v15, v15, -0x1

    goto :goto_e

    .line 1365
    .end local v15    # "j":I
    :cond_14
    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v9

    .line 1367
    .local v9, "criticalExtensionOids":Ljava/util/Set;
    if-eqz v9, :cond_15

    .line 1369
    sget-object v10, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    .line 1371
    .local v10, "critical":Z
    aget-object v11, v4, v31

    .line 1372
    .local v11, "nodes":Ljava/util/List;
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_11
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_15

    .line 1374
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1375
    .local v13, "node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v13, v10}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->setCritical(Z)V

    .line 1372
    .end local v13    # "node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    add-int/lit8 v12, v12, 0x1

    goto :goto_11

    .line 1378
    .end local v10    # "critical":Z
    .end local v11    # "nodes":Ljava/util/List;
    .end local v12    # "j":I
    :cond_15
    return-object v0

    .line 1210
    .end local v0    # "_validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v8    # "e":Ljava/util/Enumeration;
    .end local v9    # "criticalExtensionOids":Ljava/util/Set;
    .end local v30    # "pols":Ljava/util/Set;
    .end local v31    # "i":I
    .local v15, "i":I
    :cond_16
    move/from16 v31, v15

    .line 1380
    .end local v15    # "i":I
    .restart local v31    # "i":I
    const/4 v0, 0x0

    return-object v0

    .line 1205
    .end local v16    # "certPolicies":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v31    # "i":I
    .local v8, "certPolicies":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v15    # "i":I
    :catch_1
    move-exception v0

    move/from16 v31, v15

    .line 1207
    .end local v15    # "i":I
    .local v0, "e":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v31    # "i":I
    new-instance v9, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v10, "Could not read certificate policies extension from certificate."

    invoke-direct {v9, v10, v0, v1, v2}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v9
.end method

.method protected static blacklist processCertE(Ljava/security/cert/CertPath;ILcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .locals 6
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "validPolicyTree"    # Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 1053
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 1054
    .local v0, "certs":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 1058
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    .line 1061
    .local v2, "certPolicies":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_0
    sget-object v3, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3
    :try_end_0
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 1068
    nop

    .line 1069
    if-nez v2, :cond_0

    .line 1071
    const/4 p2, 0x0

    .line 1073
    :cond_0
    return-object p2

    .line 1064
    :catch_0
    move-exception v3

    .line 1066
    .local v3, "e":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v4, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Could not read certificate policies extension from certificate."

    invoke-direct {v4, v5, v3, p0, p1}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4
.end method

.method protected static blacklist processCertF(Ljava/security/cert/CertPath;ILcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;I)V
    .locals 3
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "validPolicyTree"    # Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .param p3, "explicitPolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 1040
    if-gtz p3, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1042
    :cond_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const/4 v1, 0x0

    const-string v2, "No valid policy tree found when one expected."

    invoke-direct {v0, v2, v1, p0, p1}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1045
    :cond_1
    :goto_0
    return-void
.end method

.method protected static blacklist wrapupCertA(ILjava/security/cert/X509Certificate;)I
    .locals 1
    .param p0, "explicitPolicy"    # I
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .line 2263
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 2265
    add-int/lit8 p0, p0, -0x1

    .line 2267
    :cond_0
    return p0
.end method

.method protected static blacklist wrapupCertB(Ljava/security/cert/CertPath;II)I
    .locals 8
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "explicitPolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 2276
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 2277
    .local v0, "certs":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 2282
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    .line 2285
    .local v2, "pc":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :try_start_0
    sget-object v3, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3
    :try_end_0
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v3

    .line 2291
    nop

    .line 2292
    if-eqz v2, :cond_1

    .line 2294
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v3

    .line 2296
    .local v3, "policyConstraints":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2298
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 2299
    .local v4, "constraint":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    .line 2304
    :pswitch_0
    const/4 v5, 0x0

    :try_start_1
    invoke-static {v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2311
    .local v6, "tmpInt":I
    nop

    .line 2312
    if-nez v6, :cond_0

    .line 2314
    return v5

    .line 2306
    .end local v6    # "tmpInt":I
    :catch_0
    move-exception v5

    .line 2308
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v7, "Policy constraints requireExplicitPolicy field could not be decoded."

    invoke-direct {v6, v7, v5, p0, p1}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v6

    .line 2318
    .end local v4    # "constraint":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    goto :goto_0

    .line 2320
    .end local v3    # "policyConstraints":Ljava/util/Enumeration;
    :cond_1
    return p2

    .line 2288
    :catch_1
    move-exception v3

    .line 2290
    .local v3, "e":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v4, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Policy constraints could not be decoded."

    invoke-direct {v4, v5, v3, p0, p1}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected static blacklist wrapupCertF(Ljava/security/cert/CertPath;ILjava/util/List;Ljava/util/Set;)V
    .locals 6
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "pathCheckers"    # Ljava/util/List;
    .param p3, "criticalExtensions"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 2330
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 2331
    .local v0, "certs":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 2333
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2334
    .local v2, "tmpIter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2338
    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/PKIXCertPathChecker;

    invoke-virtual {v3, v1, p3}, Ljava/security/cert/PKIXCertPathChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2347
    goto :goto_0

    .line 2344
    :catch_0
    move-exception v3

    .line 2346
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v5, "Additional certificate path checker failed."

    invoke-direct {v4, v5, v3, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 2340
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 2342
    .local v3, "e":Ljava/security/cert/CertPathValidatorException;
    new-instance v4, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    invoke-virtual {v3}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3, p0, p1}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 2350
    .end local v3    # "e":Ljava/security/cert/CertPathValidatorException;
    :cond_0
    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2355
    return-void

    .line 2352
    :cond_1
    new-instance v3, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Certificate has unsupported critical extension: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, p0, p1}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3
.end method

.method protected static blacklist wrapupCertG(Ljava/security/cert/CertPath;Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Set;I[Ljava/util/List;Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;Ljava/util/Set;)Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .locals 14
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "paramsPKIX"    # Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .param p2, "userInitialPolicySet"    # Ljava/util/Set;
    .param p3, "index"    # I
    .param p4, "policyNodes"    # [Ljava/util/List;
    .param p5, "validPolicyTree"    # Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .param p6, "acceptablePolicies"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 2367
    move-object v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 2376
    .local v3, "n":I
    const/4 v4, 0x0

    const-string v5, "Explicit policy requested but none available."

    if-nez p5, :cond_1

    .line 2378
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->isExplicitPolicyRequired()Z

    move-result v6

    if-nez v6, :cond_0

    .line 2383
    const/4 v4, 0x0

    move-object/from16 v10, p2

    move-object/from16 v6, p5

    move-object/from16 v8, p6

    .local v4, "intersection":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    goto/16 :goto_c

    .line 2380
    .end local v4    # "intersection":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_0
    new-instance v6, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    invoke-direct {v6, v5, v4, p0, v1}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v6

    .line 2385
    :cond_1
    invoke-static/range {p2 .. p2}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isAnyPolicy(Ljava/util/Set;)Z

    move-result v6

    const-string v7, "2.5.29.32.0"

    if-eqz v6, :cond_c

    .line 2388
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->isExplicitPolicyRequired()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 2390
    invoke-interface/range {p6 .. p6}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    .line 2397
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 2399
    .local v4, "_validPolicyNodeSet":Ljava/util/Set;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_0
    array-length v6, v2

    if-ge v5, v6, :cond_4

    .line 2401
    aget-object v6, v2, v5

    .line 2403
    .local v6, "_nodeDepth":Ljava/util/List;
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 2405
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 2407
    .local v9, "_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2409
    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v10

    .line 2410
    .local v10, "_iter":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 2412
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2403
    .end local v9    # "_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v10    # "_iter":Ljava/util/Iterator;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2399
    .end local v6    # "_nodeDepth":Ljava/util/List;
    .end local v8    # "k":I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2418
    .end local v5    # "j":I
    :cond_4
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 2419
    .local v5, "_vpnsIter":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2421
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 2422
    .local v6, "_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v7

    .line 2424
    .local v7, "_validPolicy":Ljava/lang/String;
    move-object/from16 v8, p6

    invoke-interface {v8, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 2430
    .end local v6    # "_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v7    # "_validPolicy":Ljava/lang/String;
    goto :goto_3

    .line 2431
    :cond_5
    move-object/from16 v8, p6

    if-eqz p5, :cond_a

    .line 2433
    add-int/lit8 v6, v3, -0x1

    move v7, v6

    move-object/from16 v6, p5

    .end local p5    # "validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v6, "validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v7, "j":I
    :goto_4
    if-ltz v7, :cond_b

    .line 2435
    aget-object v9, v2, v7

    .line 2437
    .local v9, "nodes":Ljava/util/List;
    const/4 v10, 0x0

    .local v10, "k":I
    :goto_5
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_7

    .line 2439
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 2440
    .local v11, "node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v11}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v12

    if-nez v12, :cond_6

    .line 2442
    invoke-static {v6, v2, v11}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v6

    .line 2437
    .end local v11    # "node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 2433
    .end local v9    # "nodes":Ljava/util/List;
    .end local v10    # "k":I
    :cond_7
    add-int/lit8 v7, v7, -0x1

    goto :goto_4

    .line 2392
    .end local v4    # "_validPolicyNodeSet":Ljava/util/Set;
    .end local v5    # "_vpnsIter":Ljava/util/Iterator;
    .end local v6    # "validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v7    # "j":I
    .restart local p5    # "validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_8
    move-object/from16 v8, p6

    new-instance v6, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    invoke-direct {v6, v5, v4, p0, v1}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v6

    .line 2388
    :cond_9
    move-object/from16 v8, p6

    .line 2451
    :cond_a
    move-object/from16 v6, p5

    .end local p5    # "validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v6    # "validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_b
    move-object v4, v6

    move-object/from16 v10, p2

    .local v4, "intersection":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    goto/16 :goto_c

    .line 2468
    .end local v4    # "intersection":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v6    # "validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local p5    # "validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_c
    move-object/from16 v8, p6

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 2470
    .local v4, "_validPolicyNodeSet":Ljava/util/Set;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_6
    array-length v6, v2

    if-ge v5, v6, :cond_10

    .line 2472
    aget-object v6, v2, v5

    .line 2474
    .local v6, "_nodeDepth":Ljava/util/List;
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_7
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_f

    .line 2476
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 2478
    .local v10, "_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v10}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 2480
    invoke-virtual {v10}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v11

    .line 2481
    .local v11, "_iter":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_e

    .line 2483
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 2484
    .local v12, "_c_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v12}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_d

    .line 2486
    invoke-interface {v4, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2488
    .end local v12    # "_c_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_d
    goto :goto_8

    .line 2474
    .end local v10    # "_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v11    # "_iter":Ljava/util/Iterator;
    :cond_e
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 2470
    .end local v6    # "_nodeDepth":Ljava/util/List;
    .end local v9    # "k":I
    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 2496
    .end local v5    # "j":I
    :cond_10
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object/from16 v6, p5

    .line 2497
    .end local p5    # "validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v5, "_vpnsIter":Ljava/util/Iterator;
    .local v6, "validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 2499
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 2500
    .local v7, "_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v9

    .line 2502
    .local v9, "_validPolicy":Ljava/lang/String;
    move-object/from16 v10, p2

    invoke-interface {v10, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_11

    .line 2504
    invoke-static {v6, v2, v7}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v6

    .line 2506
    .end local v7    # "_node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v9    # "_validPolicy":Ljava/lang/String;
    :cond_11
    goto :goto_9

    .line 2511
    :cond_12
    move-object/from16 v10, p2

    if-eqz v6, :cond_15

    .line 2513
    add-int/lit8 v7, v3, -0x1

    .local v7, "j":I
    :goto_a
    if-ltz v7, :cond_15

    .line 2515
    aget-object v9, v2, v7

    .line 2517
    .local v9, "nodes":Ljava/util/List;
    const/4 v11, 0x0

    .local v11, "k":I
    :goto_b
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_14

    .line 2519
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 2520
    .local v12, "node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v12}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v13

    if-nez v13, :cond_13

    .line 2522
    invoke-static {v6, v2, v12}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v6

    .line 2517
    .end local v12    # "node":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_13
    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    .line 2513
    .end local v9    # "nodes":Ljava/util/List;
    .end local v11    # "k":I
    :cond_14
    add-int/lit8 v7, v7, -0x1

    goto :goto_a

    .line 2529
    .end local v7    # "j":I
    :cond_15
    move-object v7, v6

    move-object v4, v7

    .line 2531
    .end local v5    # "_vpnsIter":Ljava/util/Iterator;
    .local v4, "intersection":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :goto_c
    return-object v4
.end method
