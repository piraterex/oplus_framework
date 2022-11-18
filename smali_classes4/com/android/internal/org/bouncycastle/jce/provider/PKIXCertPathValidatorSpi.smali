.class public Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;
.super Ljava/security/cert/CertPathValidatorSpi;
.source "PKIXCertPathValidatorSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi$NoPreloadHolder;
    }
.end annotation


# instance fields
.field private final blacklist helper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

.field private final blacklist isForCRLCheck:Z


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;-><init>(Z)V

    .line 54
    return-void
.end method

.method public constructor blacklist <init>(Z)V
    .locals 1
    .param p1, "isForCRLCheck"    # Z

    .line 57
    invoke-direct {p0}, Ljava/security/cert/CertPathValidatorSpi;-><init>()V

    .line 48
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/util/BCJcaJceHelper;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/util/BCJcaJceHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->helper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

    .line 58
    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->isForCRLCheck:Z

    .line 59
    return-void
.end method

.method static blacklist checkCertificate(Ljava/security/cert/X509Certificate;)V
    .locals 3
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 557
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getTBSCertificate()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 566
    nop

    .line 567
    return-void

    .line 563
    :catch_0
    move-exception v0

    .line 565
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 559
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 561
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string/jumbo v2, "unable to process TBSCertificate"

    invoke-direct {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public whitelist test-api engineValidate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    .locals 43
    .param p1, "certPath"    # Ljava/security/cert/CertPath;
    .param p2, "params"    # Ljava/security/cert/CertPathParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 73
    move-object/from16 v1, p0

    move-object/from16 v15, p1

    move-object/from16 v14, p2

    instance-of v0, v14, Ljava/security/cert/PKIXParameters;

    if-eqz v0, :cond_1

    .line 75
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    move-object v2, v14

    check-cast v2, Ljava/security/cert/PKIXParameters;

    invoke-direct {v0, v2}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Ljava/security/cert/PKIXParameters;)V

    .line 77
    .local v0, "paramsPKIXBldr":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    instance-of v2, v14, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;

    if-eqz v2, :cond_0

    .line 79
    move-object v2, v14

    check-cast v2, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;

    .line 81
    .local v2, "extPKIX":Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->isUseDeltasEnabled()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->setUseDeltasEnabled(Z)Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    .line 82
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->getValidityModel()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->setValidityModel(I)Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    .line 85
    .end local v2    # "extPKIX":Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v0

    .line 86
    .local v0, "paramsPKIX":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    move-object v2, v0

    goto :goto_0

    .line 87
    .end local v0    # "paramsPKIX":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    :cond_1
    instance-of v0, v14, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;

    if-eqz v0, :cond_2

    .line 89
    move-object v0, v14

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v0

    move-object v2, v0

    .restart local v0    # "paramsPKIX":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    goto :goto_0

    .line 91
    .end local v0    # "paramsPKIX":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    :cond_2
    instance-of v0, v14, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;

    if-eqz v0, :cond_1c

    .line 93
    move-object v0, v14

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-object v2, v0

    .line 100
    .local v2, "paramsPKIX":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    :goto_0
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 113
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v12

    .line 114
    .local v12, "certs":Ljava/util/List;
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v11

    .line 116
    .local v11, "n":I
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v3, -0x1

    const/4 v10, 0x0

    if-nez v0, :cond_1a

    .line 122
    const/4 v0, 0x0

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 124
    .local v4, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v4, :cond_4

    .line 125
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v5

    .line 126
    .local v5, "serial":Ljava/math/BigInteger;
    invoke-static {}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi$NoPreloadHolder;->-$$Nest$sfgetblocklist()Lcom/android/internal/org/bouncycastle/jce/provider/CertBlocklist;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/internal/org/bouncycastle/jce/provider/CertBlocklist;->isSerialNumberBlockListed(Ljava/math/BigInteger;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    .line 128
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Certificate revocation of serial 0x"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, "message":Ljava/lang/String;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 130
    new-instance v6, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    invoke-direct {v6, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    .line 131
    .local v6, "e":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v7, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v6, v15, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v7

    .line 140
    .end local v3    # "message":Ljava/lang/String;
    .end local v4    # "cert":Ljava/security/cert/X509Certificate;
    .end local v5    # "serial":Ljava/math/BigInteger;
    .end local v6    # "e":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    :cond_4
    :goto_1
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    move-object v9, v4

    .line 141
    .local v9, "currentDate":Ljava/util/Date;
    invoke-static {v2, v9}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getValidityDate(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v18

    .line 146
    .local v18, "validityDate":Ljava/util/Date;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->getInitialPolicies()Ljava/util/Set;

    move-result-object v19

    .line 154
    .local v19, "userInitialPolicySet":Ljava/util/Set;
    const/4 v7, 0x1

    :try_start_0
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v7

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 155
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v6

    .line 154
    invoke-static {v4, v5, v6}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Ljava/security/cert/TrustAnchor;

    move-result-object v4

    move-object v6, v4

    .line 157
    .local v6, "trust":Ljava/security/cert/TrustAnchor;
    if-eqz v6, :cond_19

    .line 162
    invoke-virtual {v6}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->checkCertificate(Ljava/security/cert/X509Certificate;)V
    :try_end_0
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_7

    .line 167
    nop

    .line 170
    new-instance v4, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    invoke-direct {v4, v2}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;)V

    invoke-virtual {v4, v6}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->setTrustAnchor(Ljava/security/cert/TrustAnchor;)Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v20

    .line 176
    .end local v2    # "paramsPKIX":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .local v20, "paramsPKIX":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    const/4 v2, 0x0

    .line 187
    .local v2, "index":I
    add-int/lit8 v4, v11, 0x1

    new-array v5, v4, [Ljava/util/ArrayList;

    .line 188
    .local v5, "policyNodes":[Ljava/util/List;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    array-length v8, v5

    if-ge v4, v8, :cond_5

    .line 190
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    aput-object v8, v5, v4

    .line 188
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 193
    .end local v4    # "j":I
    :cond_5
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 195
    .local v4, "policySet":Ljava/util/Set;
    const-string v8, "2.5.29.32.0"

    invoke-interface {v4, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 197
    new-instance v8, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    const/16 v23, 0x0

    const/16 v25, 0x0

    new-instance v26, Ljava/util/HashSet;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashSet;-><init>()V

    const/16 v28, 0x0

    const-string v27, "2.5.29.32.0"

    move-object/from16 v21, v8

    move-object/from16 v24, v4

    invoke-direct/range {v21 .. v28}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 200
    .local v8, "validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    aget-object v13, v5, v0

    invoke-interface {v13, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    new-instance v13, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;

    invoke-direct {v13}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;-><init>()V

    .line 210
    .local v13, "nameConstraintValidator":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v29, v13

    .end local v13    # "nameConstraintValidator":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .local v29, "nameConstraintValidator":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    move-object/from16 v13, v16

    .line 212
    .local v13, "acceptablePolicies":Ljava/util/Set;
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->isExplicitPolicyRequired()Z

    move-result v16

    if-eqz v16, :cond_6

    .line 214
    const/16 v16, 0x0

    .local v16, "explicitPolicy":I
    goto :goto_3

    .line 218
    .end local v16    # "explicitPolicy":I
    :cond_6
    add-int/lit8 v16, v11, 0x1

    .line 226
    .restart local v16    # "explicitPolicy":I
    :goto_3
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->isAnyPolicyInhibited()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 228
    const/16 v17, 0x0

    .local v17, "inhibitAnyPolicy":I
    goto :goto_4

    .line 232
    .end local v17    # "inhibitAnyPolicy":I
    :cond_7
    add-int/lit8 v17, v11, 0x1

    .line 240
    .restart local v17    # "inhibitAnyPolicy":I
    :goto_4
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->isPolicyMappingInhibited()Z

    move-result v21

    if-eqz v21, :cond_8

    .line 242
    const/16 v21, 0x0

    .local v21, "policyMapping":I
    goto :goto_5

    .line 246
    .end local v21    # "policyMapping":I
    :cond_8
    add-int/lit8 v21, v11, 0x1

    .line 255
    .restart local v21    # "policyMapping":I
    :goto_5
    invoke-virtual {v6}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v22

    .line 258
    .local v22, "sign":Ljava/security/cert/X509Certificate;
    if-eqz v22, :cond_9

    .line 260
    :try_start_1
    invoke-static/range {v22 .. v22}, Lcom/android/internal/org/bouncycastle/jce/provider/PrincipalUtils;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v23

    .line 261
    .local v23, "workingIssuerName":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    invoke-virtual/range {v22 .. v22}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v24
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .local v24, "workingPublicKey":Ljava/security/PublicKey;
    goto :goto_6

    .line 269
    .end local v23    # "workingIssuerName":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .end local v24    # "workingPublicKey":Ljava/security/PublicKey;
    :catch_0
    move-exception v0

    move/from16 v30, v2

    move-object/from16 v31, v4

    move-object/from16 v40, v9

    move/from16 v34, v11

    move-object v9, v15

    move-object/from16 v26, v29

    move-object/from16 v29, v12

    move-object v12, v5

    move-object v5, v6

    goto/16 :goto_12

    .line 265
    :cond_9
    :try_start_2
    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/jce/provider/PrincipalUtils;->getCA(Ljava/security/cert/TrustAnchor;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v23

    .line 266
    .restart local v23    # "workingIssuerName":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    invoke-virtual {v6}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v24
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_5

    .line 273
    .restart local v24    # "workingPublicKey":Ljava/security/PublicKey;
    :goto_6
    nop

    .line 275
    const/16 v25, 0x0

    .line 278
    .local v25, "workingAlgId":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :try_start_3
    invoke-static/range {v24 .. v24}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getAlgorithmIdentifier(Ljava/security/PublicKey;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3
    :try_end_3
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_3 .. :try_end_3} :catch_4

    .line 284
    .end local v25    # "workingAlgId":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .local v3, "workingAlgId":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    nop

    .line 285
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v25

    .line 286
    .local v25, "workingPublicKeyAlgorithm":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v26

    .line 291
    .local v26, "workingPublicKeyParameters":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    move/from16 v27, v11

    .line 297
    .local v27, "maxPathLength":I
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->getTargetConstraints()Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v28

    if-eqz v28, :cond_b

    .line 298
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->getTargetConstraints()Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v7

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v0, v30

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v7, v0}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v0

    if-eqz v0, :cond_a

    move/from16 v30, v2

    goto :goto_7

    .line 300
    :cond_a
    new-instance v0, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v7, "Target certificate in certification path does not match targetConstraints."

    move/from16 v30, v2

    const/4 v2, 0x0

    .end local v2    # "index":I
    .local v30, "index":I
    invoke-direct {v0, v7, v10, v15, v2}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 297
    .end local v30    # "index":I
    .restart local v2    # "index":I
    :cond_b
    move/from16 v30, v2

    .line 307
    .end local v2    # "index":I
    .restart local v30    # "index":I
    :goto_7
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCertPathCheckers()Ljava/util/List;

    move-result-object v7

    .line 308
    .local v7, "pathCheckers":Ljava/util/List;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v32

    .line 309
    .local v32, "certIter":Ljava/util/Iterator;
    :goto_8
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 311
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/PKIXCertPathChecker;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/security/cert/PKIXCertPathChecker;->init(Z)V

    goto :goto_8

    .line 318
    :cond_c
    const/4 v2, 0x0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->isRevocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 320
    new-instance v0, Lcom/android/internal/org/bouncycastle/jce/provider/ProvCrlRevocationChecker;

    iget-object v2, v1, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->helper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-direct {v0, v2}, Lcom/android/internal/org/bouncycastle/jce/provider/ProvCrlRevocationChecker;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;)V

    move-object/from16 v33, v0

    .local v0, "revocationChecker":Lcom/android/internal/org/bouncycastle/jce/provider/ProvCrlRevocationChecker;
    goto :goto_9

    .line 324
    .end local v0    # "revocationChecker":Lcom/android/internal/org/bouncycastle/jce/provider/ProvCrlRevocationChecker;
    :cond_d
    const/4 v0, 0x0

    move-object/from16 v33, v0

    .line 327
    .local v33, "revocationChecker":Lcom/android/internal/org/bouncycastle/jce/provider/ProvCrlRevocationChecker;
    :goto_9
    const/4 v0, 0x0

    .line 329
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    const/16 v28, 0x1

    add-int/lit8 v2, v2, -0x1

    move/from16 v34, v21

    move/from16 v35, v27

    move-object/from16 v21, v3

    move-object/from16 v27, v26

    move v3, v2

    move-object/from16 v26, v13

    move/from16 v2, v16

    move-object/from16 v13, v24

    move-object/from16 v24, v23

    move-object/from16 v23, v22

    move-object/from16 v22, v8

    move/from16 v8, v17

    .end local v16    # "explicitPolicy":I
    .end local v17    # "inhibitAnyPolicy":I
    .end local v30    # "index":I
    .local v2, "explicitPolicy":I
    .local v3, "index":I
    .local v8, "inhibitAnyPolicy":I
    .local v13, "workingPublicKey":Ljava/security/PublicKey;
    .local v21, "workingAlgId":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .local v22, "validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v23, "sign":Ljava/security/cert/X509Certificate;
    .local v24, "workingIssuerName":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .local v26, "acceptablePolicies":Ljava/util/Set;
    .local v27, "workingPublicKeyParameters":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .local v34, "policyMapping":I
    .local v35, "maxPathLength":I
    :goto_a
    if-ltz v3, :cond_15

    .line 332
    invoke-static {}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi$NoPreloadHolder;->-$$Nest$sfgetblocklist()Lcom/android/internal/org/bouncycastle/jce/provider/CertBlocklist;

    move-result-object v10

    invoke-virtual {v10, v13}, Lcom/android/internal/org/bouncycastle/jce/provider/CertBlocklist;->isPublicKeyBlockListed(Ljava/security/PublicKey;)Z

    move-result v10

    if-nez v10, :cond_14

    .line 345
    sub-int v10, v11, v3

    .line 353
    .local v10, "i":I
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v14, v16

    check-cast v14, Ljava/security/cert/X509Certificate;

    .line 354
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .local v14, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    const/16 v16, 0x1

    add-int/lit8 v0, v0, -0x1

    if-ne v3, v0, :cond_e

    move/from16 v0, v16

    goto :goto_b

    :cond_e
    const/4 v0, 0x0

    :goto_b
    move/from16 v28, v8

    .end local v8    # "inhibitAnyPolicy":I
    .local v28, "inhibitAnyPolicy":I
    move v8, v0

    .line 358
    .local v8, "verificationAlreadyPerformed":Z
    :try_start_4
    invoke-static {v14}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->checkCertificate(Ljava/security/cert/X509Certificate;)V
    :try_end_4
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_4 .. :try_end_4} :catch_3

    .line 363
    nop

    .line 369
    move/from16 v36, v2

    const/4 v0, 0x0

    .end local v2    # "explicitPolicy":I
    .local v36, "explicitPolicy":I
    move-object/from16 v2, p1

    move/from16 v30, v3

    .end local v3    # "index":I
    .restart local v30    # "index":I
    move-object/from16 v3, v20

    move-object/from16 v31, v4

    .end local v4    # "policySet":Ljava/util/Set;
    .local v31, "policySet":Ljava/util/Set;
    move-object/from16 v4, v18

    move-object/from16 v37, v5

    .end local v5    # "policyNodes":[Ljava/util/List;
    .local v37, "policyNodes":[Ljava/util/List;
    move-object/from16 v5, v33

    move-object/from16 v38, v6

    .end local v6    # "trust":Ljava/security/cert/TrustAnchor;
    .local v38, "trust":Ljava/security/cert/TrustAnchor;
    move/from16 v6, v30

    move-object/from16 v39, v7

    .end local v7    # "pathCheckers":Ljava/util/List;
    .local v39, "pathCheckers":Ljava/util/List;
    move-object v7, v13

    move-object/from16 v40, v9

    .end local v9    # "currentDate":Ljava/util/Date;
    .local v40, "currentDate":Ljava/util/Date;
    move-object/from16 v9, v24

    move/from16 v41, v10

    const/4 v0, 0x0

    .end local v10    # "i":I
    .local v41, "i":I
    move-object/from16 v10, v23

    invoke-static/range {v2 .. v10}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertA(Ljava/security/cert/CertPath;Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertRevocationChecker;ILjava/security/PublicKey;ZLcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Ljava/security/cert/X509Certificate;)V

    .line 372
    iget-boolean v2, v1, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->isForCRLCheck:Z

    move-object/from16 v9, v29

    move/from16 v10, v30

    .end local v29    # "nameConstraintValidator":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .end local v30    # "index":I
    .local v9, "nameConstraintValidator":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .local v10, "index":I
    invoke-static {v15, v10, v9, v2}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertBC(Ljava/security/cert/CertPath;ILcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;Z)V

    .line 374
    iget-boolean v2, v1, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->isForCRLCheck:Z

    move v7, v11

    .end local v11    # "n":I
    .local v7, "n":I
    move-object/from16 v11, p1

    move-object/from16 v29, v12

    .end local v12    # "certs":Ljava/util/List;
    .local v29, "certs":Ljava/util/List;
    move v12, v10

    move-object v3, v14

    .end local v14    # "cert":Ljava/security/cert/X509Certificate;
    .local v3, "cert":Ljava/security/cert/X509Certificate;
    move-object/from16 v14, v22

    move-object v6, v15

    move-object/from16 v15, v37

    move/from16 v16, v28

    move/from16 v17, v2

    move-object v5, v13

    move-object/from16 v13, v26

    .end local v26    # "acceptablePolicies":Ljava/util/Set;
    .local v5, "workingPublicKey":Ljava/security/PublicKey;
    .local v13, "acceptablePolicies":Ljava/util/Set;
    invoke-static/range {v11 .. v17}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertD(Ljava/security/cert/CertPath;ILjava/util/Set;Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;IZ)Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v2

    .line 377
    .end local v22    # "validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v2, "validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-static {v6, v10, v2}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertE(Ljava/security/cert/CertPath;ILcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;)Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v2

    .line 379
    move/from16 v4, v36

    .end local v36    # "explicitPolicy":I
    .local v4, "explicitPolicy":I
    invoke-static {v6, v10, v2, v4}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertF(Ljava/security/cert/CertPath;ILcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;I)V

    .line 384
    move/from16 v11, v41

    .end local v41    # "i":I
    .local v11, "i":I
    if-eq v11, v7, :cond_13

    .line 386
    if-eqz v3, :cond_10

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v12

    const/4 v14, 0x1

    if-ne v12, v14, :cond_11

    .line 389
    if-ne v11, v14, :cond_f

    invoke-virtual/range {v38 .. v38}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 391
    move-object/from16 v26, v9

    move/from16 v14, v28

    move/from16 v15, v34

    move/from16 v1, v35

    move-object/from16 v12, v37

    move-object/from16 v9, v39

    goto/16 :goto_e

    .line 393
    :cond_f
    new-instance v12, Ljava/security/cert/CertPathValidatorException;

    const-string v14, "Version 1 certificates can\'t be used as CA ones."

    invoke-direct {v12, v14, v0, v6, v10}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v12

    .line 386
    :cond_10
    const/4 v14, 0x1

    .line 397
    :cond_11
    invoke-static {v6, v10}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertA(Ljava/security/cert/CertPath;I)V

    .line 399
    move/from16 v15, v34

    move-object/from16 v12, v37

    .end local v34    # "policyMapping":I
    .end local v37    # "policyNodes":[Ljava/util/List;
    .local v12, "policyNodes":[Ljava/util/List;
    .local v15, "policyMapping":I
    invoke-static {v6, v10, v12, v2, v15}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareCertB(Ljava/security/cert/CertPath;I[Ljava/util/List;Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;I)Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v2

    .line 402
    invoke-static {v6, v10, v9}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertG(Ljava/security/cert/CertPath;ILcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;)V

    .line 405
    invoke-static {v6, v10, v4}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertH1(Ljava/security/cert/CertPath;II)I

    move-result v4

    .line 406
    invoke-static {v6, v10, v15}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertH2(Ljava/security/cert/CertPath;II)I

    move-result v15

    .line 407
    move/from16 v14, v28

    .end local v28    # "inhibitAnyPolicy":I
    .local v14, "inhibitAnyPolicy":I
    invoke-static {v6, v10, v14}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertH3(Ljava/security/cert/CertPath;II)I

    move-result v14

    .line 412
    invoke-static {v6, v10, v4}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertI1(Ljava/security/cert/CertPath;II)I

    move-result v4

    .line 413
    invoke-static {v6, v10, v15}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertI2(Ljava/security/cert/CertPath;II)I

    move-result v15

    .line 416
    invoke-static {v6, v10, v14}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertJ(Ljava/security/cert/CertPath;II)I

    move-result v14

    .line 419
    invoke-static {v6, v10}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertK(Ljava/security/cert/CertPath;I)V

    .line 422
    move-object/from16 v26, v9

    move/from16 v9, v35

    .end local v35    # "maxPathLength":I
    .local v9, "maxPathLength":I
    .local v26, "nameConstraintValidator":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    invoke-static {v6, v10, v9}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertL(Ljava/security/cert/CertPath;II)I

    move-result v9

    .line 425
    invoke-static {v6, v10, v9}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertM(Ljava/security/cert/CertPath;II)I

    move-result v9

    .line 428
    invoke-static {v6, v10}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertN(Ljava/security/cert/CertPath;I)V

    .line 430
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    .line 431
    .local v0, "criticalExtensions":Ljava/util/Set;
    if-eqz v0, :cond_12

    .line 433
    move-object/from16 v17, v2

    .end local v2    # "validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v17, "validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v0, v2

    .line 436
    sget-object v2, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->KEY_USAGE:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 437
    sget-object v2, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 438
    sget-object v2, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 439
    sget-object v2, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 440
    sget-object v2, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 441
    sget-object v2, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 442
    sget-object v2, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 443
    sget-object v2, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 444
    sget-object v2, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 445
    sget-object v2, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-object v2, v0

    goto :goto_c

    .line 449
    .end local v17    # "validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v2    # "validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_12
    move-object/from16 v17, v2

    .end local v2    # "validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v17    # "validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move-object v0, v2

    .line 453
    .end local v0    # "criticalExtensions":Ljava/util/Set;
    .local v2, "criticalExtensions":Ljava/util/Set;
    :goto_c
    move/from16 v22, v9

    move-object/from16 v9, v39

    .end local v39    # "pathCheckers":Ljava/util/List;
    .local v9, "pathCheckers":Ljava/util/List;
    .local v22, "maxPathLength":I
    invoke-static {v6, v10, v2, v9}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertO(Ljava/security/cert/CertPath;ILjava/util/Set;Ljava/util/List;)V

    .line 456
    move-object/from16 v23, v3

    .line 459
    invoke-static/range {v23 .. v23}, Lcom/android/internal/org/bouncycastle/jce/provider/PrincipalUtils;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v24

    .line 464
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0
    :try_end_5
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_5 .. :try_end_5} :catch_2

    move-object/from16 v28, v2

    .end local v2    # "criticalExtensions":Ljava/util/Set;
    .local v28, "criticalExtensions":Ljava/util/Set;
    :try_start_6
    iget-object v2, v1, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->helper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-static {v0, v10, v2}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getNextWorkingKey(Ljava/util/List;ILcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/security/PublicKey;

    move-result-object v0
    :try_end_6
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_6 .. :try_end_6} :catch_1

    .line 469
    .end local v5    # "workingPublicKey":Ljava/security/PublicKey;
    .local v0, "workingPublicKey":Ljava/security/PublicKey;
    nop

    .line 471
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getAlgorithmIdentifier(Ljava/security/PublicKey;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    .line 473
    .end local v21    # "workingAlgId":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .local v2, "workingAlgId":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    .line 475
    .end local v25    # "workingPublicKeyAlgorithm":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .local v5, "workingPublicKeyAlgorithm":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v21

    move-object/from16 v25, v5

    move v8, v14

    move/from16 v34, v15

    move-object/from16 v27, v21

    move/from16 v35, v22

    move-object/from16 v21, v2

    move v2, v4

    move-object/from16 v22, v17

    .end local v27    # "workingPublicKeyParameters":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .local v21, "workingPublicKeyParameters":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    goto :goto_f

    .line 466
    .end local v0    # "workingPublicKey":Ljava/security/PublicKey;
    .end local v2    # "workingAlgId":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .local v5, "workingPublicKey":Ljava/security/PublicKey;
    .local v21, "workingAlgId":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .restart local v25    # "workingPublicKeyAlgorithm":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .restart local v27    # "workingPublicKeyParameters":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    :catch_1
    move-exception v0

    goto :goto_d

    .end local v28    # "criticalExtensions":Ljava/util/Set;
    .local v2, "criticalExtensions":Ljava/util/Set;
    :catch_2
    move-exception v0

    move-object/from16 v28, v2

    .line 468
    .end local v2    # "criticalExtensions":Ljava/util/Set;
    .local v0, "e":Ljava/security/cert/CertPathValidatorException;
    .restart local v28    # "criticalExtensions":Ljava/util/Set;
    :goto_d
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Next working key could not be retrieved."

    invoke-direct {v2, v1, v0, v6, v10}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2

    .line 384
    .end local v0    # "e":Ljava/security/cert/CertPathValidatorException;
    .end local v12    # "policyNodes":[Ljava/util/List;
    .end local v14    # "inhibitAnyPolicy":I
    .end local v15    # "policyMapping":I
    .end local v17    # "validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v22    # "maxPathLength":I
    .end local v26    # "nameConstraintValidator":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .local v2, "validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v9, "nameConstraintValidator":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .local v28, "inhibitAnyPolicy":I
    .restart local v34    # "policyMapping":I
    .restart local v35    # "maxPathLength":I
    .restart local v37    # "policyNodes":[Ljava/util/List;
    .restart local v39    # "pathCheckers":Ljava/util/List;
    :cond_13
    move-object/from16 v26, v9

    move/from16 v14, v28

    move/from16 v15, v34

    move/from16 v1, v35

    move-object/from16 v12, v37

    move-object/from16 v9, v39

    .line 329
    .end local v8    # "verificationAlreadyPerformed":Z
    .end local v28    # "inhibitAnyPolicy":I
    .end local v34    # "policyMapping":I
    .end local v35    # "maxPathLength":I
    .end local v37    # "policyNodes":[Ljava/util/List;
    .end local v39    # "pathCheckers":Ljava/util/List;
    .local v1, "maxPathLength":I
    .local v9, "pathCheckers":Ljava/util/List;
    .restart local v12    # "policyNodes":[Ljava/util/List;
    .restart local v14    # "inhibitAnyPolicy":I
    .restart local v15    # "policyMapping":I
    .restart local v26    # "nameConstraintValidator":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    :goto_e
    move/from16 v35, v1

    move-object/from16 v22, v2

    move v2, v4

    move-object v0, v5

    move v8, v14

    move/from16 v34, v15

    .end local v1    # "maxPathLength":I
    .end local v4    # "explicitPolicy":I
    .end local v5    # "workingPublicKey":Ljava/security/PublicKey;
    .end local v14    # "inhibitAnyPolicy":I
    .end local v15    # "policyMapping":I
    .local v0, "workingPublicKey":Ljava/security/PublicKey;
    .local v2, "explicitPolicy":I
    .local v8, "inhibitAnyPolicy":I
    .local v22, "validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v34    # "policyMapping":I
    .restart local v35    # "maxPathLength":I
    :goto_f
    add-int/lit8 v1, v10, -0x1

    move-object/from16 v14, p2

    move-object v15, v6

    move v11, v7

    move-object v7, v9

    move-object v5, v12

    move-object/from16 v12, v29

    move-object/from16 v4, v31

    move-object/from16 v6, v38

    move-object/from16 v9, v40

    const/4 v10, 0x0

    move-object/from16 v29, v26

    move-object/from16 v26, v13

    move-object v13, v0

    move-object v0, v3

    move v3, v1

    move-object/from16 v1, p0

    .end local v10    # "index":I
    .local v1, "index":I
    goto/16 :goto_a

    .line 360
    .end local v0    # "workingPublicKey":Ljava/security/PublicKey;
    .end local v1    # "index":I
    .end local v31    # "policySet":Ljava/util/Set;
    .end local v38    # "trust":Ljava/security/cert/TrustAnchor;
    .end local v40    # "currentDate":Ljava/util/Date;
    .local v3, "index":I
    .local v4, "policySet":Ljava/util/Set;
    .local v5, "policyNodes":[Ljava/util/List;
    .restart local v6    # "trust":Ljava/security/cert/TrustAnchor;
    .local v7, "pathCheckers":Ljava/util/List;
    .local v8, "verificationAlreadyPerformed":Z
    .local v9, "currentDate":Ljava/util/Date;
    .local v10, "i":I
    .local v11, "n":I
    .local v12, "certs":Ljava/util/List;
    .local v13, "workingPublicKey":Ljava/security/PublicKey;
    .local v14, "cert":Ljava/security/cert/X509Certificate;
    .local v26, "acceptablePolicies":Ljava/util/Set;
    .restart local v28    # "inhibitAnyPolicy":I
    .local v29, "nameConstraintValidator":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    :catch_3
    move-exception v0

    move-object/from16 v31, v4

    move-object/from16 v38, v6

    move-object/from16 v40, v9

    move-object v6, v15

    move/from16 v15, v34

    move/from16 v1, v35

    move v4, v2

    move-object v9, v7

    move v7, v11

    move v11, v10

    move v10, v3

    move-object v3, v14

    move/from16 v14, v28

    move-object/from16 v42, v12

    move-object v12, v5

    move-object v5, v13

    move-object/from16 v13, v26

    move-object/from16 v26, v29

    move-object/from16 v29, v42

    move-object v2, v0

    .end local v2    # "explicitPolicy":I
    .end local v6    # "trust":Ljava/security/cert/TrustAnchor;
    .end local v28    # "inhibitAnyPolicy":I
    .end local v34    # "policyMapping":I
    .end local v35    # "maxPathLength":I
    .local v1, "maxPathLength":I
    .local v3, "cert":Ljava/security/cert/X509Certificate;
    .local v4, "explicitPolicy":I
    .local v5, "workingPublicKey":Ljava/security/PublicKey;
    .local v7, "n":I
    .local v9, "pathCheckers":Ljava/util/List;
    .local v10, "index":I
    .local v11, "i":I
    .local v12, "policyNodes":[Ljava/util/List;
    .local v13, "acceptablePolicies":Ljava/util/Set;
    .local v14, "inhibitAnyPolicy":I
    .restart local v15    # "policyMapping":I
    .local v26, "nameConstraintValidator":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .local v29, "certs":Ljava/util/List;
    .restart local v31    # "policySet":Ljava/util/Set;
    .restart local v38    # "trust":Ljava/security/cert/TrustAnchor;
    .restart local v40    # "currentDate":Ljava/util/Date;
    move-object v0, v2

    .line 362
    .local v0, "e":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    move/from16 v17, v1

    .end local v1    # "maxPathLength":I
    .local v17, "maxPathLength":I
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v28, v3

    .end local v3    # "cert":Ljava/security/cert/X509Certificate;
    .local v28, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;->getUnderlyingException()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v2, v1, v3, v6, v10}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2

    .line 334
    .end local v10    # "index":I
    .end local v14    # "inhibitAnyPolicy":I
    .end local v15    # "policyMapping":I
    .end local v17    # "maxPathLength":I
    .end local v28    # "cert":Ljava/security/cert/X509Certificate;
    .end local v31    # "policySet":Ljava/util/Set;
    .end local v38    # "trust":Ljava/security/cert/TrustAnchor;
    .end local v40    # "currentDate":Ljava/util/Date;
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    .restart local v2    # "explicitPolicy":I
    .local v3, "index":I
    .local v4, "policySet":Ljava/util/Set;
    .local v5, "policyNodes":[Ljava/util/List;
    .restart local v6    # "trust":Ljava/security/cert/TrustAnchor;
    .local v7, "pathCheckers":Ljava/util/List;
    .local v8, "inhibitAnyPolicy":I
    .local v9, "currentDate":Ljava/util/Date;
    .local v11, "n":I
    .local v12, "certs":Ljava/util/List;
    .local v13, "workingPublicKey":Ljava/security/PublicKey;
    .local v26, "acceptablePolicies":Ljava/util/Set;
    .local v29, "nameConstraintValidator":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .restart local v34    # "policyMapping":I
    .restart local v35    # "maxPathLength":I
    :cond_14
    move v10, v3

    move-object/from16 v31, v4

    move-object/from16 v38, v6

    move v14, v8

    move-object v6, v15

    move v4, v2

    move-object/from16 v42, v12

    move-object v12, v5

    move-object v5, v13

    .end local v2    # "explicitPolicy":I
    .end local v3    # "index":I
    .end local v6    # "trust":Ljava/security/cert/TrustAnchor;
    .end local v8    # "inhibitAnyPolicy":I
    .end local v13    # "workingPublicKey":Ljava/security/PublicKey;
    .local v4, "explicitPolicy":I
    .local v5, "workingPublicKey":Ljava/security/PublicKey;
    .restart local v10    # "index":I
    .local v12, "policyNodes":[Ljava/util/List;
    .restart local v14    # "inhibitAnyPolicy":I
    .restart local v31    # "policySet":Ljava/util/Set;
    .restart local v38    # "trust":Ljava/security/cert/TrustAnchor;
    .local v42, "certs":Ljava/util/List;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Certificate revocation of public key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 335
    .local v1, "message":Ljava/lang/String;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 336
    new-instance v2, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    invoke-direct {v2, v1}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    .line 337
    .local v2, "e":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8, v2, v6, v10}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    .line 483
    .end local v1    # "message":Ljava/lang/String;
    .end local v10    # "index":I
    .end local v14    # "inhibitAnyPolicy":I
    .end local v31    # "policySet":Ljava/util/Set;
    .end local v38    # "trust":Ljava/security/cert/TrustAnchor;
    .end local v42    # "certs":Ljava/util/List;
    .local v2, "explicitPolicy":I
    .restart local v3    # "index":I
    .local v4, "policySet":Ljava/util/Set;
    .local v5, "policyNodes":[Ljava/util/List;
    .restart local v6    # "trust":Ljava/security/cert/TrustAnchor;
    .restart local v8    # "inhibitAnyPolicy":I
    .local v12, "certs":Ljava/util/List;
    .restart local v13    # "workingPublicKey":Ljava/security/PublicKey;
    :cond_15
    move v10, v3

    move-object/from16 v31, v4

    move-object/from16 v38, v6

    move v14, v8

    move-object/from16 v40, v9

    move-object v6, v15

    move/from16 v15, v34

    move/from16 v17, v35

    move v4, v2

    move-object v9, v7

    move v7, v11

    move-object/from16 v42, v12

    move-object v12, v5

    move-object v5, v13

    move-object/from16 v13, v26

    move-object/from16 v26, v29

    move-object/from16 v29, v42

    .end local v2    # "explicitPolicy":I
    .end local v3    # "index":I
    .end local v6    # "trust":Ljava/security/cert/TrustAnchor;
    .end local v8    # "inhibitAnyPolicy":I
    .end local v11    # "n":I
    .end local v34    # "policyMapping":I
    .end local v35    # "maxPathLength":I
    .local v4, "explicitPolicy":I
    .local v5, "workingPublicKey":Ljava/security/PublicKey;
    .local v7, "n":I
    .local v9, "pathCheckers":Ljava/util/List;
    .restart local v10    # "index":I
    .local v12, "policyNodes":[Ljava/util/List;
    .local v13, "acceptablePolicies":Ljava/util/Set;
    .restart local v14    # "inhibitAnyPolicy":I
    .restart local v15    # "policyMapping":I
    .restart local v17    # "maxPathLength":I
    .local v26, "nameConstraintValidator":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .local v29, "certs":Ljava/util/List;
    .restart local v31    # "policySet":Ljava/util/Set;
    .restart local v38    # "trust":Ljava/security/cert/TrustAnchor;
    .restart local v40    # "currentDate":Ljava/util/Date;
    invoke-static {v4, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertA(ILjava/security/cert/X509Certificate;)I

    move-result v1

    .line 485
    .end local v4    # "explicitPolicy":I
    .local v1, "explicitPolicy":I
    add-int/lit8 v3, v10, 0x1

    invoke-static {v6, v3, v1}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertB(Ljava/security/cert/CertPath;II)I

    move-result v1

    .line 494
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v2

    .line 496
    .local v2, "criticalExtensions":Ljava/util/Set;
    if-eqz v2, :cond_16

    .line 498
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v2, v3

    .line 500
    sget-object v3, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->KEY_USAGE:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 501
    sget-object v3, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 502
    sget-object v3, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 503
    sget-object v3, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 504
    sget-object v3, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 505
    sget-object v3, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 506
    sget-object v3, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 507
    sget-object v3, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 508
    sget-object v3, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 509
    sget-object v3, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 510
    sget-object v3, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 511
    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->extendedKeyUsage:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-object v11, v2

    goto :goto_10

    .line 515
    :cond_16
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move-object v2, v3

    move-object v11, v2

    .line 518
    .end local v2    # "criticalExtensions":Ljava/util/Set;
    .local v11, "criticalExtensions":Ljava/util/Set;
    :goto_10
    add-int/lit8 v3, v10, 0x1

    invoke-static {v6, v3, v9, v11}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertF(Ljava/security/cert/CertPath;ILjava/util/List;Ljava/util/Set;)V

    .line 520
    add-int/lit8 v8, v10, 0x1

    move-object/from16 v2, p1

    move-object/from16 v3, v20

    move-object/from16 v4, v19

    move-object/from16 v28, v5

    .end local v5    # "workingPublicKey":Ljava/security/PublicKey;
    .local v28, "workingPublicKey":Ljava/security/PublicKey;
    move v5, v8

    move-object v8, v6

    move-object v6, v12

    move/from16 v34, v7

    .end local v7    # "n":I
    .local v34, "n":I
    move-object/from16 v7, v22

    move-object/from16 v39, v9

    move-object v9, v8

    .end local v9    # "pathCheckers":Ljava/util/List;
    .restart local v39    # "pathCheckers":Ljava/util/List;
    move-object v8, v13

    invoke-static/range {v2 .. v8}, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertG(Ljava/security/cert/CertPath;Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Set;I[Ljava/util/List;Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;Ljava/util/Set;)Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v2

    .line 523
    .local v2, "intersection":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    if-gtz v1, :cond_18

    if-eqz v2, :cond_17

    goto :goto_11

    .line 528
    :cond_17
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    const-string v4, "Path processing failed on policy."

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v9, v10}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    .line 525
    :cond_18
    :goto_11
    new-instance v3, Ljava/security/cert/PKIXCertPathValidatorResult;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    move-object/from16 v5, v38

    .end local v38    # "trust":Ljava/security/cert/TrustAnchor;
    .local v5, "trust":Ljava/security/cert/TrustAnchor;
    invoke-direct {v3, v5, v2, v4}, Ljava/security/cert/PKIXCertPathValidatorResult;-><init>(Ljava/security/cert/TrustAnchor;Ljava/security/cert/PolicyNode;Ljava/security/PublicKey;)V

    return-object v3

    .line 280
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v1    # "explicitPolicy":I
    .end local v10    # "index":I
    .end local v14    # "inhibitAnyPolicy":I
    .end local v15    # "policyMapping":I
    .end local v26    # "nameConstraintValidator":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .end local v27    # "workingPublicKeyParameters":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .end local v28    # "workingPublicKey":Ljava/security/PublicKey;
    .end local v31    # "policySet":Ljava/util/Set;
    .end local v32    # "certIter":Ljava/util/Iterator;
    .end local v33    # "revocationChecker":Lcom/android/internal/org/bouncycastle/jce/provider/ProvCrlRevocationChecker;
    .end local v34    # "n":I
    .end local v39    # "pathCheckers":Ljava/util/List;
    .end local v40    # "currentDate":Ljava/util/Date;
    .local v2, "index":I
    .local v4, "policySet":Ljava/util/Set;
    .local v5, "policyNodes":[Ljava/util/List;
    .restart local v6    # "trust":Ljava/security/cert/TrustAnchor;
    .local v8, "validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v9, "currentDate":Ljava/util/Date;
    .local v11, "n":I
    .local v12, "certs":Ljava/util/List;
    .restart local v16    # "explicitPolicy":I
    .local v17, "inhibitAnyPolicy":I
    .local v21, "policyMapping":I
    .local v22, "sign":Ljava/security/cert/X509Certificate;
    .local v23, "workingIssuerName":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .local v24, "workingPublicKey":Ljava/security/PublicKey;
    .local v25, "workingAlgId":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .local v29, "nameConstraintValidator":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    :catch_4
    move-exception v0

    move/from16 v30, v2

    move-object/from16 v31, v4

    move-object/from16 v40, v9

    move/from16 v34, v11

    move-object v9, v15

    move-object/from16 v26, v29

    move-object/from16 v29, v12

    move-object v12, v5

    move-object v5, v6

    move-object v1, v0

    .end local v2    # "index":I
    .end local v4    # "policySet":Ljava/util/Set;
    .end local v6    # "trust":Ljava/security/cert/TrustAnchor;
    .end local v9    # "currentDate":Ljava/util/Date;
    .end local v11    # "n":I
    .local v5, "trust":Ljava/security/cert/TrustAnchor;
    .local v12, "policyNodes":[Ljava/util/List;
    .restart local v26    # "nameConstraintValidator":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .local v29, "certs":Ljava/util/List;
    .restart local v30    # "index":I
    .restart local v31    # "policySet":Ljava/util/Set;
    .restart local v34    # "n":I
    .restart local v40    # "currentDate":Ljava/util/Date;
    move-object v0, v1

    .line 282
    .local v0, "e":Ljava/security/cert/CertPathValidatorException;
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v2, "Algorithm identifier of public key of trust anchor could not be read."

    invoke-direct {v1, v2, v0, v9, v3}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 269
    .end local v0    # "e":Ljava/security/cert/CertPathValidatorException;
    .end local v23    # "workingIssuerName":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .end local v24    # "workingPublicKey":Ljava/security/PublicKey;
    .end local v25    # "workingAlgId":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v26    # "nameConstraintValidator":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .end local v30    # "index":I
    .end local v31    # "policySet":Ljava/util/Set;
    .end local v34    # "n":I
    .end local v40    # "currentDate":Ljava/util/Date;
    .restart local v2    # "index":I
    .restart local v4    # "policySet":Ljava/util/Set;
    .local v5, "policyNodes":[Ljava/util/List;
    .restart local v6    # "trust":Ljava/security/cert/TrustAnchor;
    .restart local v9    # "currentDate":Ljava/util/Date;
    .restart local v11    # "n":I
    .local v12, "certs":Ljava/util/List;
    .local v29, "nameConstraintValidator":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    :catch_5
    move-exception v0

    move/from16 v30, v2

    move-object/from16 v31, v4

    move-object/from16 v40, v9

    move/from16 v34, v11

    move-object v9, v15

    move-object/from16 v26, v29

    move-object/from16 v29, v12

    move-object v12, v5

    move-object v5, v6

    .line 271
    .end local v2    # "index":I
    .end local v4    # "policySet":Ljava/util/Set;
    .end local v6    # "trust":Ljava/security/cert/TrustAnchor;
    .end local v9    # "currentDate":Ljava/util/Date;
    .end local v11    # "n":I
    .local v0, "ex":Ljava/lang/RuntimeException;
    .local v5, "trust":Ljava/security/cert/TrustAnchor;
    .local v12, "policyNodes":[Ljava/util/List;
    .restart local v26    # "nameConstraintValidator":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .local v29, "certs":Ljava/util/List;
    .restart local v30    # "index":I
    .restart local v31    # "policySet":Ljava/util/Set;
    .restart local v34    # "n":I
    .restart local v40    # "currentDate":Ljava/util/Date;
    :goto_12
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v2, "Subject of trust anchor could not be (re)encoded."

    invoke-direct {v1, v2, v0, v9, v3}, Lcom/android/internal/org/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 159
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .end local v5    # "trust":Ljava/security/cert/TrustAnchor;
    .end local v8    # "validPolicyTree":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v13    # "acceptablePolicies":Ljava/util/Set;
    .end local v16    # "explicitPolicy":I
    .end local v17    # "inhibitAnyPolicy":I
    .end local v20    # "paramsPKIX":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .end local v21    # "policyMapping":I
    .end local v22    # "sign":Ljava/security/cert/X509Certificate;
    .end local v26    # "nameConstraintValidator":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .end local v29    # "certs":Ljava/util/List;
    .end local v30    # "index":I
    .end local v31    # "policySet":Ljava/util/Set;
    .end local v34    # "n":I
    .end local v40    # "currentDate":Ljava/util/Date;
    .local v2, "paramsPKIX":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local v6    # "trust":Ljava/security/cert/TrustAnchor;
    .restart local v9    # "currentDate":Ljava/util/Date;
    .restart local v11    # "n":I
    .local v12, "certs":Ljava/util/List;
    :cond_19
    move-object v5, v6

    move-object/from16 v40, v9

    move/from16 v34, v11

    move-object/from16 v29, v12

    move-object v9, v15

    .end local v6    # "trust":Ljava/security/cert/TrustAnchor;
    .end local v9    # "currentDate":Ljava/util/Date;
    .end local v11    # "n":I
    .end local v12    # "certs":Ljava/util/List;
    .restart local v5    # "trust":Ljava/security/cert/TrustAnchor;
    .restart local v29    # "certs":Ljava/util/List;
    .restart local v34    # "n":I
    .restart local v40    # "currentDate":Ljava/util/Date;
    :try_start_7
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Trust anchor for certification path not found."

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v9, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    .end local v2    # "paramsPKIX":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .end local v18    # "validityDate":Ljava/util/Date;
    .end local v19    # "userInitialPolicySet":Ljava/util/Set;
    .end local v29    # "certs":Ljava/util/List;
    .end local v34    # "n":I
    .end local v40    # "currentDate":Ljava/util/Date;
    .end local p0    # "this":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;
    .end local p1    # "certPath":Ljava/security/cert/CertPath;
    .end local p2    # "params":Ljava/security/cert/CertPathParameters;
    throw v0
    :try_end_7
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_7 .. :try_end_7} :catch_6

    .line 164
    .end local v5    # "trust":Ljava/security/cert/TrustAnchor;
    .restart local v2    # "paramsPKIX":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local v18    # "validityDate":Ljava/util/Date;
    .restart local v19    # "userInitialPolicySet":Ljava/util/Set;
    .restart local v29    # "certs":Ljava/util/List;
    .restart local v34    # "n":I
    .restart local v40    # "currentDate":Ljava/util/Date;
    .restart local p0    # "this":Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;
    .restart local p1    # "certPath":Ljava/security/cert/CertPath;
    .restart local p2    # "params":Ljava/security/cert/CertPathParameters;
    :catch_6
    move-exception v0

    goto :goto_13

    .end local v29    # "certs":Ljava/util/List;
    .end local v34    # "n":I
    .end local v40    # "currentDate":Ljava/util/Date;
    .restart local v9    # "currentDate":Ljava/util/Date;
    .restart local v11    # "n":I
    .restart local v12    # "certs":Ljava/util/List;
    :catch_7
    move-exception v0

    move-object/from16 v40, v9

    move/from16 v34, v11

    move-object/from16 v29, v12

    move-object v9, v15

    .line 166
    .end local v9    # "currentDate":Ljava/util/Date;
    .end local v11    # "n":I
    .end local v12    # "certs":Ljava/util/List;
    .local v0, "e":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .restart local v29    # "certs":Ljava/util/List;
    .restart local v34    # "n":I
    .restart local v40    # "currentDate":Ljava/util/Date;
    :goto_13
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;->getUnderlyingException()Ljava/lang/Throwable;

    move-result-object v4

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-direct {v1, v3, v4, v9, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 118
    .end local v0    # "e":Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;
    .end local v18    # "validityDate":Ljava/util/Date;
    .end local v19    # "userInitialPolicySet":Ljava/util/Set;
    .end local v29    # "certs":Ljava/util/List;
    .end local v34    # "n":I
    .end local v40    # "currentDate":Ljava/util/Date;
    .restart local v11    # "n":I
    .restart local v12    # "certs":Ljava/util/List;
    :cond_1a
    move-object v9, v15

    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Certification path is empty."

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v9, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 102
    .end local v11    # "n":I
    .end local v12    # "certs":Ljava/util/List;
    :cond_1b
    move-object v9, v15

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v1, "trustAnchors is null, this is not allowed for certification path validation."

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    .end local v2    # "paramsPKIX":Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    :cond_1c
    move-object v9, v15

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parameters must be a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Ljava/security/cert/PKIXParameters;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instance."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
