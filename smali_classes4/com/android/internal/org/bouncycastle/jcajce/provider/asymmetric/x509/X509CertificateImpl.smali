.class abstract Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;
.super Ljava/security/cert/X509Certificate;
.source "X509CertificateImpl.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/jcajce/interfaces/BCX509Certificate;


# instance fields
.field protected blacklist basicConstraints:Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;

.field protected blacklist bcHelper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

.field protected blacklist c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

.field protected blacklist keyUsage:[Z

.field protected blacklist sigAlgName:Ljava/lang/String;

.field protected blacklist sigAlgParams:[B


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;[ZLjava/lang/String;[B)V
    .locals 0
    .param p1, "bcHelper"    # Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;
    .param p2, "c"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;
    .param p3, "basicConstraints"    # Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;
    .param p4, "keyUsage"    # [Z
    .param p5, "sigAlgName"    # Ljava/lang/String;
    .param p6, "sigAlgParams"    # [B

    .line 85
    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->bcHelper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

    .line 87
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    .line 88
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->basicConstraints:Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;

    .line 89
    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->keyUsage:[Z

    .line 90
    iput-object p5, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->sigAlgName:Ljava/lang/String;

    .line 91
    iput-object p6, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->sigAlgParams:[B

    .line 92
    return-void
.end method

.method private blacklist checkSignature(Ljava/security/PublicKey;Ljava/security/Signature;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;[B)V
    .locals 3
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "signature"    # Ljava/security/Signature;
    .param p3, "params"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .param p4, "sigBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 780
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->getSignature()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->isAlgIdEqual(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 786
    invoke-static {p2, p3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->setSignatureParameters(Ljava/security/Signature;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 788
    invoke-virtual {p2, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 792
    :try_start_0
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/jcajce/io/OutputStreamFactory;->createStream(Ljava/security/Signature;)Ljava/io/OutputStream;

    move-result-object v1

    const/16 v2, 0x200

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 794
    .local v0, "sigOut":Ljava/io/OutputStream;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v1

    const-string v2, "DER"

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->encodeTo(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 796
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 801
    .end local v0    # "sigOut":Ljava/io/OutputStream;
    nop

    .line 803
    invoke-virtual {p2, p4}, Ljava/security/Signature;->verify([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 807
    return-void

    .line 805
    :cond_0
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "certificate does not verify with supplied key"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 798
    :catch_0
    move-exception v0

    .line 800
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 782
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string/jumbo v1, "signature algorithm in TBS cert not same as outer cert"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist doVerify(Ljava/security/PublicKey;Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/SignatureCreator;)V
    .locals 13
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "signatureCreator"    # Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/SignatureCreator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 646
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/jcajce/CompositePublicKey;

    const-string/jumbo v1, "no matching key found"

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->isCompositeAlgorithm(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 648
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/CompositePublicKey;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/CompositePublicKey;->getPublicKeys()Ljava/util/List;

    move-result-object v0

    .line 649
    .local v0, "pubKeys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    .line 650
    .local v2, "keySeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getSignature()Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3

    .line 652
    .local v3, "sigSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v4, 0x0

    .line 653
    .local v4, "success":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_2

    .line 655
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    .line 657
    goto :goto_2

    .line 659
    :cond_0
    invoke-virtual {v2, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v6

    .line 660
    .local v6, "sigAlg":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->getSignatureName(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/String;

    move-result-object v7

    .line 662
    .local v7, "sigName":Ljava/lang/String;
    invoke-interface {p2, v7}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/SignatureCreator;->createSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v8

    .line 664
    .local v8, "signature":Ljava/security/Signature;
    const/4 v9, 0x0

    .line 668
    .local v9, "sigExc":Ljava/security/SignatureException;
    nop

    .line 669
    :try_start_0
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/security/PublicKey;

    .line 670
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v11

    .line 671
    invoke-virtual {v3, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v12

    invoke-static {v12}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v12

    .line 668
    invoke-direct {p0, v10, v8, v11, v12}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->checkSignature(Ljava/security/PublicKey;Ljava/security/Signature;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;[B)V
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    .line 672
    const/4 v4, 0x1

    .line 677
    goto :goto_1

    .line 674
    :catch_0
    move-exception v10

    .line 676
    .local v10, "e":Ljava/security/SignatureException;
    move-object v9, v10

    .line 679
    .end local v10    # "e":Ljava/security/SignatureException;
    :goto_1
    if-nez v9, :cond_1

    .line 653
    .end local v6    # "sigAlg":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v7    # "sigName":Ljava/lang/String;
    .end local v8    # "signature":Ljava/security/Signature;
    .end local v9    # "sigExc":Ljava/security/SignatureException;
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 681
    .restart local v6    # "sigAlg":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .restart local v7    # "sigName":Ljava/lang/String;
    .restart local v8    # "signature":Ljava/security/Signature;
    .restart local v9    # "sigExc":Ljava/security/SignatureException;
    :cond_1
    throw v9

    .line 685
    .end local v5    # "i":I
    .end local v6    # "sigAlg":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v7    # "sigName":Ljava/lang/String;
    .end local v8    # "signature":Ljava/security/Signature;
    .end local v9    # "sigExc":Ljava/security/SignatureException;
    :cond_2
    if-eqz v4, :cond_3

    .line 689
    .end local v0    # "pubKeys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    .end local v2    # "keySeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v3    # "sigSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v4    # "success":Z
    goto/16 :goto_7

    .line 687
    .restart local v0    # "pubKeys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    .restart local v2    # "keySeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v3    # "sigSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v4    # "success":Z
    :cond_3
    new-instance v5, Ljava/security/InvalidKeyException;

    invoke-direct {v5, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 690
    .end local v0    # "pubKeys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    .end local v2    # "keySeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v3    # "sigSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v4    # "success":Z
    :cond_4
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->isCompositeAlgorithm(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 692
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    .line 693
    .local v0, "keySeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getSignature()Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    .line 695
    .local v2, "sigSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v3, 0x0

    .line 696
    .local v3, "success":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v5

    if-eq v4, v5, :cond_6

    .line 698
    invoke-virtual {v0, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    .line 699
    .local v5, "sigAlg":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->getSignatureName(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/String;

    move-result-object v6

    .line 701
    .local v6, "sigName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 705
    .local v7, "sigExc":Ljava/security/SignatureException;
    :try_start_1
    invoke-interface {p2, v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/SignatureCreator;->createSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v8

    .line 707
    .restart local v8    # "signature":Ljava/security/Signature;
    nop

    .line 709
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v9

    .line 710
    invoke-virtual {v2, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v10

    .line 707
    invoke-direct {p0, p1, v8, v9, v10}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->checkSignature(Ljava/security/PublicKey;Ljava/security/Signature;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;[B)V
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_1

    .line 712
    const/4 v3, 0x1

    .line 725
    .end local v8    # "signature":Ljava/security/Signature;
    :goto_4
    goto :goto_5

    .line 722
    :catch_1
    move-exception v8

    .line 724
    .local v8, "e":Ljava/security/SignatureException;
    move-object v7, v8

    goto :goto_5

    .line 718
    .end local v8    # "e":Ljava/security/SignatureException;
    :catch_2
    move-exception v8

    goto :goto_4

    .line 714
    :catch_3
    move-exception v8

    goto :goto_4

    .line 727
    :goto_5
    if-nez v7, :cond_5

    .line 696
    .end local v5    # "sigAlg":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v6    # "sigName":Ljava/lang/String;
    .end local v7    # "sigExc":Ljava/security/SignatureException;
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 729
    .restart local v5    # "sigAlg":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .restart local v6    # "sigName":Ljava/lang/String;
    .restart local v7    # "sigExc":Ljava/security/SignatureException;
    :cond_5
    throw v7

    .line 733
    .end local v4    # "i":I
    .end local v5    # "sigAlg":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v6    # "sigName":Ljava/lang/String;
    .end local v7    # "sigExc":Ljava/security/SignatureException;
    :cond_6
    if-eqz v3, :cond_7

    .line 737
    .end local v0    # "keySeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v2    # "sigSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v3    # "success":Z
    goto :goto_7

    .line 735
    .restart local v0    # "keySeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v2    # "sigSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v3    # "success":Z
    :cond_7
    new-instance v4, Ljava/security/InvalidKeyException;

    invoke-direct {v4, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 740
    .end local v0    # "keySeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v2    # "sigSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v3    # "success":Z
    :cond_8
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->getSignatureName(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 742
    .local v0, "sigName":Ljava/lang/String;
    invoke-interface {p2, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/SignatureCreator;->createSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 744
    .local v1, "signature":Ljava/security/Signature;
    instance-of v2, p1, Lcom/android/internal/org/bouncycastle/jcajce/CompositePublicKey;

    if-eqz v2, :cond_a

    .line 746
    move-object v2, p1

    check-cast v2, Lcom/android/internal/org/bouncycastle/jcajce/CompositePublicKey;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jcajce/CompositePublicKey;->getPublicKeys()Ljava/util/List;

    move-result-object v2

    .line 748
    .local v2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_9

    .line 752
    :try_start_2
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/PublicKey;

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    .line 753
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getSignature()[B

    move-result-object v6

    .line 752
    invoke-direct {p0, v4, v1, v5, v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->checkSignature(Ljava/security/PublicKey;Ljava/security/Signature;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;[B)V
    :try_end_2
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_4

    .line 754
    return-void

    .line 756
    :catch_4
    move-exception v4

    .line 748
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 762
    .end local v3    # "i":I
    :cond_9
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string/jumbo v4, "no matching signature found"

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 766
    .end local v2    # "keys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    :cond_a
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    .line 767
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getSignature()[B

    move-result-object v3

    .line 766
    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->checkSignature(Ljava/security/PublicKey;Ljava/security/Signature;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;[B)V

    .line 770
    .end local v0    # "sigName":Ljava/lang/String;
    .end local v1    # "signature":Ljava/security/Signature;
    :goto_7
    return-void
.end method

.method private static blacklist getAlternativeNames(Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;Ljava/lang/String;)Ljava/util/Collection;
    .locals 8
    .param p0, "c"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;
    .param p1, "oid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 855
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getExtensionOctets(Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;Ljava/lang/String;)[B

    move-result-object v0

    .line 856
    .local v0, "extOctets":[B
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 858
    return-object v1

    .line 862
    :cond_0
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 863
    .local v2, "temp":Ljava/util/Collection;
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v3

    .line 864
    .local v3, "it":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 866
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v4

    .line 867
    .local v4, "genName":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 868
    .local v5, "list":Ljava/util/List;
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v6

    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 869
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 901
    new-instance v1, Ljava/io/IOException;

    goto :goto_2

    .line 885
    :pswitch_0
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 886
    goto :goto_1

    .line 888
    :pswitch_1
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 892
    .local v6, "addrBytes":[B
    :try_start_1
    invoke-static {v6}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 897
    .local v7, "addr":Ljava/lang/String;
    nop

    .line 898
    :try_start_2
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 899
    goto :goto_1

    .line 894
    .end local v7    # "addr":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 896
    .local v7, "e":Ljava/net/UnknownHostException;
    goto :goto_0

    .line 877
    .end local v6    # "addrBytes":[B
    .end local v7    # "e":Ljava/net/UnknownHostException;
    :pswitch_2
    sget-object v6, Lcom/android/internal/org/bouncycastle/asn1/x500/style/RFC4519Style;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 878
    goto :goto_1

    .line 882
    :pswitch_3
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    check-cast v6, Lcom/android/internal/org/bouncycastle/asn1/ASN1String;

    invoke-interface {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 883
    goto :goto_1

    .line 874
    :pswitch_4
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getEncoded()[B

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 875
    nop

    .line 904
    :goto_1
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 905
    nop

    .end local v4    # "genName":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .end local v5    # "list":Ljava/util/List;
    goto/16 :goto_0

    .line 901
    .restart local v4    # "genName":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .restart local v5    # "list":Ljava/util/List;
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad tag number: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "extOctets":[B
    .end local p0    # "c":Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;
    .end local p1    # "oid":Ljava/lang/String;
    throw v1

    .line 906
    .end local v4    # "genName":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .end local v5    # "list":Ljava/util/List;
    .restart local v0    # "extOctets":[B
    .restart local p0    # "c":Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;
    .restart local p1    # "oid":Ljava/lang/String;
    :cond_1
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 908
    return-object v1

    .line 910
    :cond_2
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v1

    .line 912
    .end local v2    # "temp":Ljava/util/Collection;
    .end local v3    # "it":Ljava/util/Enumeration;
    :catch_1
    move-exception v1

    .line 914
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/cert/CertificateParsingException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected static blacklist getExtensionOctets(Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;Ljava/lang/String;)[B
    .locals 2
    .param p0, "c"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;
    .param p1, "oid"    # Ljava/lang/String;

    .line 920
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getExtensionValue(Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    .line 921
    .local v0, "extValue":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    if-eqz v0, :cond_0

    .line 923
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    return-object v1

    .line 925
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method protected static blacklist getExtensionValue(Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    .locals 3
    .param p0, "c"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;
    .param p1, "oid"    # Ljava/lang/String;

    .line 930
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    .line 931
    .local v0, "exts":Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    if-eqz v0, :cond_0

    .line 933
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v1

    .line 934
    .local v1, "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    if-eqz v1, :cond_0

    .line 936
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    return-object v2

    .line 939
    .end local v1    # "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist isAlgIdEqual(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Z
    .locals 4
    .param p1, "id1"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "id2"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 811
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 813
    return v1

    .line 816
    :cond_0
    const-string v0, "com.android.internal.org.bouncycastle.x509.allow_absent_equiv_NULL"

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Properties;->isOverrideSet(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 818
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-nez v0, :cond_2

    .line 820
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 822
    return v1

    .line 825
    :cond_1
    return v2

    .line 828
    :cond_2
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-nez v0, :cond_4

    .line 830
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 832
    return v1

    .line 835
    :cond_3
    return v2

    .line 839
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 841
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 844
    :cond_5
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 846
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 849
    :cond_6
    return v2
.end method


# virtual methods
.method public whitelist test-api checkValidity()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .line 112
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->checkValidity(Ljava/util/Date;)V

    .line 113
    return-void
.end method

.method public whitelist test-api checkValidity(Ljava/util/Date;)V
    .locals 4
    .param p1, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .line 119
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getNotAfter()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 124
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getNotBefore()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 128
    return-void

    .line 126
    :cond_0
    new-instance v0, Ljava/security/cert/CertificateNotYetValidException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "certificate not valid till "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getStartDate()Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_1
    new-instance v0, Ljava/security/cert/CertificateExpiredException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "certificate expired on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getEndDate()Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateExpiredException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getBasicConstraints()I
    .locals 2

    .line 304
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->basicConstraints:Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    .line 306
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->basicConstraints:Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;->getPathLenConstraint()Ljava/math/BigInteger;

    move-result-object v0

    if-nez v0, :cond_0

    .line 310
    const v0, 0x7fffffff

    return v0

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->basicConstraints:Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;->getPathLenConstraint()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0

    .line 319
    :cond_1
    return v1

    .line 323
    :cond_2
    return v1
.end method

.method public whitelist test-api getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 6

    .line 340
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getVersion()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 342
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 343
    .local v0, "set":Ljava/util/Set;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v1

    .line 345
    .local v1, "extensions":Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    if-eqz v1, :cond_2

    .line 347
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v2

    .line 349
    .local v2, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 351
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 352
    .local v3, "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v4

    .line 354
    .local v4, "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 356
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 358
    .end local v3    # "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v4    # "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    :cond_0
    goto :goto_0

    .line 360
    :cond_1
    return-object v0

    .line 364
    .end local v0    # "set":Ljava/util/Set;
    .end local v1    # "extensions":Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    .end local v2    # "e":Ljava/util/Enumeration;
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getEncoded()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 473
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 475
    :catch_0
    move-exception v0

    .line 477
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api getExtendedKeyUsage()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    const-string v1, "2.5.29.37"

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getExtensionOctets(Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;Ljava/lang/String;)[B

    move-result-object v0

    .line 280
    .local v0, "extOctets":[B
    if-nez v0, :cond_0

    .line 282
    const/4 v1, 0x0

    return-object v1

    .line 287
    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    .line 289
    .local v1, "seq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 290
    .local v2, "list":Ljava/util/List;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 292
    invoke-virtual {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    check-cast v4, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 294
    .end local v3    # "i":I
    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 296
    .end local v1    # "seq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v2    # "list":Ljava/util/List;
    :catch_0
    move-exception v1

    .line 298
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/cert/CertificateParsingException;

    const-string v3, "error processing extended key usage extension"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist test-api getExtensionValue(Ljava/lang/String;)[B
    .locals 5
    .param p1, "oid"    # Ljava/lang/String;

    .line 369
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getExtensionValue(Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    .line 370
    .local v0, "extValue":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    if-eqz v0, :cond_0

    .line 374
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getEncoded()[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 376
    :catch_0
    move-exception v1

    .line 378
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error parsing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 382
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist test-api getIssuerAlternativeNames()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 335
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->issuerAlternativeName:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getAlternativeNames(Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getIssuerDN()Ljava/security/Principal;
    .locals 2

    .line 142
    new-instance v0, Lcom/android/internal/org/bouncycastle/jce/X509Principal;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getIssuer()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/jce/X509Principal;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)V

    return-object v0
.end method

.method public whitelist test-api getIssuerUniqueID()[Z
    .locals 7

    .line 233
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->getIssuerUniqueId()Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    move-result-object v0

    .line 235
    .local v0, "id":Lcom/android/internal/org/bouncycastle/asn1/DERBitString;
    if-eqz v0, :cond_2

    .line 237
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v1

    .line 238
    .local v1, "bytes":[B
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x8

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getPadBits()I

    move-result v3

    sub-int/2addr v2, v3

    new-array v2, v2, [Z

    .line 240
    .local v2, "boolId":[Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-eq v3, v4, :cond_1

    .line 242
    div-int/lit8 v4, v3, 0x8

    aget-byte v4, v1, v4

    const/16 v5, 0x80

    rem-int/lit8 v6, v3, 0x8

    ushr-int/2addr v5, v6

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    aput-boolean v4, v2, v3

    .line 240
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 245
    .end local v3    # "i":I
    :cond_1
    return-object v2

    .line 248
    .end local v1    # "bytes":[B
    .end local v2    # "boolId":[Z
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getIssuerX500Name()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getIssuer()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 3

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getIssuer()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    .line 151
    .local v0, "encoding":[B
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v1, v0}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 153
    .end local v0    # "encoding":[B
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "can\'t encode issuer DN"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api getKeyUsage()[Z
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->keyUsage:[Z

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([Z)[Z

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 6

    .line 387
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getVersion()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 389
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 390
    .local v0, "set":Ljava/util/Set;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v1

    .line 392
    .local v1, "extensions":Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    if-eqz v1, :cond_2

    .line 394
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v2

    .line 396
    .local v2, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 398
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 399
    .local v3, "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v4

    .line 401
    .local v4, "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    move-result v5

    if-nez v5, :cond_0

    .line 403
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 405
    .end local v3    # "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v4    # "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    :cond_0
    goto :goto_0

    .line 407
    :cond_1
    return-object v0

    .line 411
    .end local v0    # "set":Ljava/util/Set;
    .end local v1    # "extensions":Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    .end local v2    # "e":Ljava/util/Enumeration;
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getNotAfter()Ljava/util/Date;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getEndDate()Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;->getDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getNotBefore()Ljava/util/Date;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getStartDate()Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;->getDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getPublicKey()Ljava/security/PublicKey;
    .locals 2

    .line 460
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getSubjectPublicKeyInfo()Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->getPublicKey(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 462
    :catch_0
    move-exception v0

    .line 464
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist test-api getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getSerialNumber()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSigAlgName()Ljava/lang/String;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->sigAlgName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getSigAlgOID()Ljava/lang/String;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSigAlgParams()[B
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->sigAlgParams:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSignature()[B
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getSignature()Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getOctets()[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSubjectAlternativeNames()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->subjectAlternativeName:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getAlternativeNames(Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSubjectDN()Ljava/security/Principal;
    .locals 2

    .line 161
    new-instance v0, Lcom/android/internal/org/bouncycastle/jce/X509Principal;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getSubject()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/jce/X509Principal;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)V

    return-object v0
.end method

.method public whitelist test-api getSubjectUniqueID()[Z
    .locals 7

    .line 253
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->getSubjectUniqueId()Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    move-result-object v0

    .line 255
    .local v0, "id":Lcom/android/internal/org/bouncycastle/asn1/DERBitString;
    if-eqz v0, :cond_2

    .line 257
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v1

    .line 258
    .local v1, "bytes":[B
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x8

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getPadBits()I

    move-result v3

    sub-int/2addr v2, v3

    new-array v2, v2, [Z

    .line 260
    .local v2, "boolId":[Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-eq v3, v4, :cond_1

    .line 262
    div-int/lit8 v4, v3, 0x8

    aget-byte v4, v1, v4

    const/16 v5, 0x80

    rem-int/lit8 v6, v3, 0x8

    ushr-int/2addr v5, v6

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    aput-boolean v4, v2, v3

    .line 260
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 265
    .end local v3    # "i":I
    :cond_1
    return-object v2

    .line 268
    .end local v1    # "bytes":[B
    .end local v2    # "boolId":[Z
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getSubjectX500Name()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getSubject()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 3

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getSubject()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    .line 170
    .local v0, "encoding":[B
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v1, v0}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 172
    .end local v0    # "encoding":[B
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "can\'t encode subject DN"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api getTBSCertificate()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 195
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist getTBSCertificateNative()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getVersion()I
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getVersionNumber()I

    move-result v0

    return v0
.end method

.method public whitelist test-api hasUnsupportedCriticalExtension()Z
    .locals 5

    .line 416
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getVersion()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 418
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    .line 420
    .local v0, "extensions":Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    if-eqz v0, :cond_3

    .line 422
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v1

    .line 424
    .local v1, "e":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 426
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 428
    .local v2, "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->keyUsage:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->certificatePolicies:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 429
    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->policyMappings:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 430
    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->inhibitAnyPolicy:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 431
    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->cRLDistributionPoints:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 432
    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 433
    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->deltaCRLIndicator:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 434
    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->policyConstraints:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 435
    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->basicConstraints:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 436
    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->subjectAlternativeName:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 437
    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->nameConstraints:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 438
    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 440
    goto :goto_0

    .line 443
    :cond_1
    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v3

    .line 445
    .local v3, "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 447
    const/4 v4, 0x1

    return v4

    .line 449
    .end local v2    # "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v3    # "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    :cond_2
    goto :goto_0

    .line 453
    .end local v0    # "extensions":Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    .end local v1    # "e":Ljava/util/Enumeration;
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 12

    .line 483
    const-string v0, " value = "

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 484
    .local v1, "buf":Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/android/internal/org/bouncycastle/util/Strings;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    .line 486
    .local v2, "nl":Ljava/lang/String;
    const-string v3, "  [0]         Version: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getVersion()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 487
    const-string v3, "         SerialNumber: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 488
    const-string v3, "             IssuerDN: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getIssuerDN()Ljava/security/Principal;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 489
    const-string v3, "           Start Date: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getNotBefore()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 490
    const-string v3, "           Final Date: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getNotAfter()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 491
    const-string v3, "            SubjectDN: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getSubjectDN()Ljava/security/Principal;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 492
    const-string v3, "           Public Key: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 493
    const-string v3, "  Signature Algorithm: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getSigAlgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 495
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->getSignature()[B

    move-result-object v3

    invoke-static {v3, v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->prettyPrintSignature([BLjava/lang/StringBuffer;Ljava/lang/String;)V

    .line 497
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v3

    .line 499
    .local v3, "extensions":Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    if-eqz v3, :cond_7

    .line 501
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v4

    .line 503
    .local v4, "e":Ljava/util/Enumeration;
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 505
    const-string v5, "       Extensions: \n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 508
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 510
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 511
    .local v5, "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v3, v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v6

    .line 513
    .local v6, "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 515
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v7

    .line 516
    .local v7, "octs":[B
    new-instance v8, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v8, v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 517
    .local v8, "dIn":Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;
    const-string v9, "                       critical("

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, ") "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 520
    :try_start_0
    sget-object v9, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->basicConstraints:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 522
    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 524
    :cond_1
    sget-object v9, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->keyUsage:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 526
    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyUsage;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/KeyUsage;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 528
    :cond_2
    sget-object v9, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscapeCertType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 530
    new-instance v9, Lcom/android/internal/org/bouncycastle/asn1/misc/NetscapeCertType;

    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/internal/org/bouncycastle/asn1/misc/NetscapeCertType;-><init>(Lcom/android/internal/org/bouncycastle/asn1/DERBitString;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 532
    :cond_3
    sget-object v9, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscapeRevocationURL:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 534
    new-instance v9, Lcom/android/internal/org/bouncycastle/asn1/misc/NetscapeRevocationURL;

    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/internal/org/bouncycastle/asn1/misc/NetscapeRevocationURL;-><init>(Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 536
    :cond_4
    sget-object v9, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->verisignCzagExtension:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 538
    new-instance v9, Lcom/android/internal/org/bouncycastle/asn1/misc/VerisignCzagExtension;

    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/internal/org/bouncycastle/asn1/misc/VerisignCzagExtension;-><init>(Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 542
    :cond_5
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 543
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/org/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    :goto_1
    goto :goto_2

    .line 547
    :catch_0
    move-exception v9

    .line 549
    .local v9, "ex":Ljava/lang/Exception;
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 551
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "*****"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 553
    .end local v7    # "octs":[B
    .end local v8    # "dIn":Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;
    .end local v9    # "ex":Ljava/lang/Exception;
    :goto_2
    goto :goto_3

    .line 556
    :cond_6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 558
    .end local v5    # "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v6    # "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    :goto_3
    goto/16 :goto_0

    .line 561
    .end local v4    # "e":Ljava/util/Enumeration;
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api verify(Ljava/security/PublicKey;)V
    .locals 1
    .param p1, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 569
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl$1;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl$1;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;)V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->doVerify(Ljava/security/PublicKey;Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/SignatureCreator;)V

    .line 584
    return-void
.end method

.method public final whitelist test-api verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 592
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl$2;

    invoke-direct {v0, p0, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl$2;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->doVerify(Ljava/security/PublicKey;Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/SignatureCreator;)V

    .line 607
    return-void
.end method

.method public final whitelist test-api verify(Ljava/security/PublicKey;Ljava/security/Provider;)V
    .locals 4
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 617
    :try_start_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl$3;

    invoke-direct {v0, p0, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl$3;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;Ljava/security/Provider;)V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;->doVerify(Ljava/security/PublicKey;Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/SignatureCreator;)V
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 637
    nop

    .line 638
    return-void

    .line 633
    :catch_0
    move-exception v0

    .line 636
    .local v0, "e":Ljava/security/NoSuchProviderException;
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "provider issue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/NoSuchProviderException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
