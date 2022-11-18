.class abstract Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;
.super Ljava/security/cert/X509CRL;
.source "X509CRLImpl.java"


# instance fields
.field protected blacklist bcHelper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

.field protected blacklist c:Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

.field protected blacklist isIndirect:Z

.field protected blacklist sigAlgName:Ljava/lang/String;

.field protected blacklist sigAlgParams:[B


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;Ljava/lang/String;[BZ)V
    .locals 0
    .param p1, "bcHelper"    # Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;
    .param p2, "c"    # Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;
    .param p3, "sigAlgName"    # Ljava/lang/String;
    .param p4, "sigAlgParams"    # [B
    .param p5, "isIndirect"    # Z

    .line 79
    invoke-direct {p0}, Ljava/security/cert/X509CRL;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->bcHelper:Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceHelper;

    .line 81
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

    .line 82
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->sigAlgName:Ljava/lang/String;

    .line 83
    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->sigAlgParams:[B

    .line 84
    iput-boolean p5, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->isIndirect:Z

    .line 85
    return-void
.end method

.method private blacklist checkSignature(Ljava/security/PublicKey;Ljava/security/Signature;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;[B)V
    .locals 3
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sig"    # Ljava/security/Signature;
    .param p3, "sigAlgParams"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .param p4, "encSig"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 373
    if-eqz p3, :cond_0

    .line 376
    invoke-static {p2, p3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->setSignatureParameters(Ljava/security/Signature;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 379
    :cond_0
    invoke-virtual {p2, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 383
    :try_start_0
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/jcajce/io/OutputStreamFactory;->createStream(Ljava/security/Signature;)Ljava/io/OutputStream;

    move-result-object v1

    const/16 v2, 0x200

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 385
    .local v0, "sigOut":Ljava/io/OutputStream;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->getTBSCertList()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;

    move-result-object v1

    const-string v2, "DER"

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->encodeTo(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 387
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    .end local v0    # "sigOut":Ljava/io/OutputStream;
    nop

    .line 394
    invoke-virtual {p2, p4}, Ljava/security/Signature;->verify([B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 398
    return-void

    .line 396
    :cond_1
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "CRL does not verify with supplied public key."

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 389
    :catch_0
    move-exception v0

    .line 391
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CRLException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist doVerify(Ljava/security/PublicKey;Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/SignatureCreator;)V
    .locals 13
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sigCreator"    # Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/SignatureCreator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->getTBSCertList()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->getSignature()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 255
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/jcajce/CompositePublicKey;

    const-string/jumbo v1, "no matching key found"

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->isCompositeAlgorithm(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 257
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/CompositePublicKey;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/CompositePublicKey;->getPublicKeys()Ljava/util/List;

    move-result-object v0

    .line 258
    .local v0, "pubKeys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    .line 259
    .local v2, "keySeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->getSignature()Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3

    .line 261
    .local v3, "sigSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v4, 0x0

    .line 262
    .local v4, "success":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_2

    .line 264
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    .line 266
    goto :goto_2

    .line 269
    :cond_0
    invoke-virtual {v2, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v6

    .line 270
    .local v6, "sigAlg":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->getSignatureName(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/String;

    move-result-object v7

    .line 272
    .local v7, "sigName":Ljava/lang/String;
    invoke-interface {p2, v7}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/SignatureCreator;->createSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v8

    .line 274
    .local v8, "signature":Ljava/security/Signature;
    const/4 v9, 0x0

    .line 278
    .local v9, "sigExc":Ljava/security/SignatureException;
    nop

    .line 279
    :try_start_0
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/security/PublicKey;

    .line 280
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v11

    .line 281
    invoke-virtual {v3, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v12

    invoke-static {v12}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v12

    .line 278
    invoke-direct {p0, v10, v8, v11, v12}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->checkSignature(Ljava/security/PublicKey;Ljava/security/Signature;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;[B)V
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    const/4 v4, 0x1

    .line 287
    goto :goto_1

    .line 284
    :catch_0
    move-exception v10

    .line 286
    .local v10, "e":Ljava/security/SignatureException;
    move-object v9, v10

    .line 289
    .end local v10    # "e":Ljava/security/SignatureException;
    :goto_1
    if-nez v9, :cond_1

    .line 262
    .end local v6    # "sigAlg":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v7    # "sigName":Ljava/lang/String;
    .end local v8    # "signature":Ljava/security/Signature;
    .end local v9    # "sigExc":Ljava/security/SignatureException;
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 291
    .restart local v6    # "sigAlg":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .restart local v7    # "sigName":Ljava/lang/String;
    .restart local v8    # "signature":Ljava/security/Signature;
    .restart local v9    # "sigExc":Ljava/security/SignatureException;
    :cond_1
    throw v9

    .line 295
    .end local v5    # "i":I
    .end local v6    # "sigAlg":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v7    # "sigName":Ljava/lang/String;
    .end local v8    # "signature":Ljava/security/Signature;
    .end local v9    # "sigExc":Ljava/security/SignatureException;
    :cond_2
    if-eqz v4, :cond_3

    .line 299
    .end local v0    # "pubKeys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    .end local v2    # "keySeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v3    # "sigSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v4    # "success":Z
    goto/16 :goto_6

    .line 297
    .restart local v0    # "pubKeys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    .restart local v2    # "keySeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v3    # "sigSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v4    # "success":Z
    :cond_3
    new-instance v5, Ljava/security/InvalidKeyException;

    invoke-direct {v5, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 300
    .end local v0    # "pubKeys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    .end local v2    # "keySeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v3    # "sigSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v4    # "success":Z
    :cond_4
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->isCompositeAlgorithm(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 302
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    .line 303
    .local v0, "keySeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->getSignature()Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    .line 305
    .local v2, "sigSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    const/4 v3, 0x0

    .line 306
    .local v3, "success":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v5

    if-eq v4, v5, :cond_6

    .line 308
    invoke-virtual {v0, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    .line 309
    .local v5, "sigAlg":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->getSignatureName(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/String;

    move-result-object v6

    .line 311
    .local v6, "sigName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 315
    .local v7, "sigExc":Ljava/security/SignatureException;
    :try_start_1
    invoke-interface {p2, v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/SignatureCreator;->createSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v8

    .line 317
    .restart local v8    # "signature":Ljava/security/Signature;
    nop

    .line 319
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v9

    .line 320
    invoke-virtual {v2, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v10

    .line 317
    invoke-direct {p0, p1, v8, v9, v10}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->checkSignature(Ljava/security/PublicKey;Ljava/security/Signature;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;[B)V
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_1

    .line 322
    const/4 v3, 0x1

    .line 335
    .end local v8    # "signature":Ljava/security/Signature;
    :goto_4
    goto :goto_5

    .line 332
    :catch_1
    move-exception v8

    .line 334
    .local v8, "e":Ljava/security/SignatureException;
    move-object v7, v8

    goto :goto_5

    .line 328
    .end local v8    # "e":Ljava/security/SignatureException;
    :catch_2
    move-exception v8

    goto :goto_4

    .line 324
    :catch_3
    move-exception v8

    goto :goto_4

    .line 337
    :goto_5
    if-nez v7, :cond_5

    .line 306
    .end local v5    # "sigAlg":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v6    # "sigName":Ljava/lang/String;
    .end local v7    # "sigExc":Ljava/security/SignatureException;
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 339
    .restart local v5    # "sigAlg":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .restart local v6    # "sigName":Ljava/lang/String;
    .restart local v7    # "sigExc":Ljava/security/SignatureException;
    :cond_5
    throw v7

    .line 343
    .end local v4    # "i":I
    .end local v5    # "sigAlg":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v6    # "sigName":Ljava/lang/String;
    .end local v7    # "sigExc":Ljava/security/SignatureException;
    :cond_6
    if-eqz v3, :cond_7

    .line 347
    .end local v0    # "keySeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v2    # "sigSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v3    # "success":Z
    goto :goto_6

    .line 345
    .restart local v0    # "keySeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v2    # "sigSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .restart local v3    # "success":Z
    :cond_7
    new-instance v4, Ljava/security/InvalidKeyException;

    invoke-direct {v4, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 350
    .end local v0    # "keySeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v2    # "sigSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v3    # "success":Z
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->getSigAlgName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/SignatureCreator;->createSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 352
    .local v0, "sig":Ljava/security/Signature;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->sigAlgParams:[B

    if-nez v1, :cond_9

    .line 354
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->getSignature()[B

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->checkSignature(Ljava/security/PublicKey;Ljava/security/Signature;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;[B)V

    goto :goto_6

    .line 360
    :cond_9
    :try_start_2
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->getSignature()[B

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->checkSignature(Ljava/security/PublicKey;Ljava/security/Signature;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;[B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 365
    nop

    .line 368
    .end local v0    # "sig":Ljava/security/Signature;
    :goto_6
    return-void

    .line 362
    .restart local v0    # "sig":Ljava/security/Signature;
    :catch_4
    move-exception v1

    .line 364
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/security/SignatureException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot decode signature parameters: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 252
    .end local v0    # "sig":Ljava/security/Signature;
    .end local v1    # "e":Ljava/io/IOException;
    :cond_a
    new-instance v0, Ljava/security/cert/CRLException;

    const-string v1, "Signature algorithm on CertificateList does not match TBSCertList."

    invoke-direct {v0, v1}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist getExtensionOIDs(Z)Ljava/util/Set;
    .locals 6
    .param p1, "critical"    # Z

    .line 108
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->getVersion()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 110
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->getTBSCertList()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    .line 112
    .local v0, "extensions":Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    if-eqz v0, :cond_2

    .line 114
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 115
    .local v1, "set":Ljava/util/Set;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v2

    .line 117
    .local v2, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 119
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 120
    .local v3, "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v0, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v4

    .line 122
    .local v4, "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    move-result v5

    if-ne p1, v5, :cond_0

    .line 124
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 126
    .end local v3    # "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v4    # "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    :cond_0
    goto :goto_0

    .line 128
    :cond_1
    return-object v1

    .line 132
    .end local v0    # "extensions":Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    .end local v1    # "set":Ljava/util/Set;
    .end local v2    # "e":Ljava/util/Enumeration;
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method protected static blacklist getExtensionOctets(Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;Ljava/lang/String;)[B
    .locals 2
    .param p0, "c"    # Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;
    .param p1, "oid"    # Ljava/lang/String;

    .line 715
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->getExtensionValue(Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    .line 716
    .local v0, "extValue":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    if-eqz v0, :cond_0

    .line 718
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    return-object v1

    .line 720
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method protected static blacklist getExtensionValue(Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    .locals 3
    .param p0, "c"    # Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;
    .param p1, "oid"    # Ljava/lang/String;

    .line 725
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->getTBSCertList()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    .line 726
    .local v0, "exts":Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    if-eqz v0, :cond_0

    .line 728
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v1

    .line 729
    .local v1, "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    if-eqz v1, :cond_0

    .line 731
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    return-object v2

    .line 734
    .end local v1    # "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist loadCRLEntries()Ljava/util/Set;
    .locals 8

    .line 436
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 437
    .local v0, "entrySet":Ljava/util/Set;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->getRevokedCertificateEnumeration()Ljava/util/Enumeration;

    move-result-object v1

    .line 439
    .local v1, "certs":Ljava/util/Enumeration;
    const/4 v2, 0x0

    .line 440
    .local v2, "previousCertificateIssuer":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 442
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    .line 443
    .local v3, "entry":Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    new-instance v4, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;

    iget-boolean v5, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->isIndirect:Z

    invoke-direct {v4, v3, v5, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;ZLcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)V

    .line 444
    .local v4, "crlEntry":Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 445
    iget-boolean v5, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->isIndirect:Z

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->hasExtensions()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 447
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v5

    sget-object v6, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->certificateIssuer:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v5

    .line 449
    .local v5, "currentCaName":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    if-eqz v5, :cond_0

    .line 451
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getParsedValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v2

    .line 454
    .end local v3    # "entry":Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    .end local v4    # "crlEntry":Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;
    .end local v5    # "currentCaName":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    :cond_0
    goto :goto_0

    .line 456
    :cond_1
    return-object v0
.end method


# virtual methods
.method public whitelist test-api getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    .line 137
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->getExtensionOIDs(Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getEncoded()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 169
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CRLException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api getExtensionValue(Ljava/lang/String;)[B
    .locals 5
    .param p1, "oid"    # Ljava/lang/String;

    .line 147
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->getExtensionValue(Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    .line 148
    .local v0, "extValue":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    if-eqz v0, :cond_0

    .line 152
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getEncoded()[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 154
    :catch_0
    move-exception v1

    .line 156
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

    .line 159
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist test-api getIssuerDN()Ljava/security/Principal;
    .locals 2

    .line 407
    new-instance v0, Lcom/android/internal/org/bouncycastle/jce/X509Principal;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->getIssuer()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/jce/X509Principal;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)V

    return-object v0
.end method

.method public whitelist test-api getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 3

    .line 414
    :try_start_0
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->getIssuer()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 416
    :catch_0
    move-exception v0

    .line 418
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "can\'t encode issuer DN"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api getNextUpdate()Ljava/util/Date;
    .locals 2

    .line 429
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->getNextUpdate()Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    move-result-object v0

    .line 431
    .local v0, "nextUpdate":Lcom/android/internal/org/bouncycastle/asn1/x509/Time;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;->getDate()Ljava/util/Date;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public whitelist test-api getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    .line 142
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->getExtensionOIDs(Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;
    .locals 6
    .param p1, "serialNumber"    # Ljava/math/BigInteger;

    .line 461
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->getRevokedCertificateEnumeration()Ljava/util/Enumeration;

    move-result-object v0

    .line 463
    .local v0, "certs":Ljava/util/Enumeration;
    const/4 v1, 0x0

    .line 464
    .local v1, "previousCertificateIssuer":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 466
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    .line 468
    .local v2, "entry":Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getUserCertificate()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->hasValue(Ljava/math/BigInteger;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 470
    new-instance v3, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;

    iget-boolean v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->isIndirect:Z

    invoke-direct {v3, v2, v4, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLEntryObject;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;ZLcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)V

    return-object v3

    .line 473
    :cond_0
    iget-boolean v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->isIndirect:Z

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->hasExtensions()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 475
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v3

    sget-object v4, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->certificateIssuer:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v3

    .line 477
    .local v3, "currentCaName":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    if-eqz v3, :cond_1

    .line 479
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getParsedValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    .line 482
    .end local v2    # "entry":Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    .end local v3    # "currentCaName":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    :cond_1
    goto :goto_0

    .line 484
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method public whitelist test-api getRevokedCertificates()Ljava/util/Set;
    .locals 2

    .line 489
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->loadCRLEntries()Ljava/util/Set;

    move-result-object v0

    .line 491
    .local v0, "entrySet":Ljava/util/Set;
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 493
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 496
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist test-api getSigAlgName()Ljava/lang/String;
    .locals 1

    .line 519
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->sigAlgName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getSigAlgOID()Ljava/lang/String;
    .locals 1

    .line 524
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSigAlgParams()[B
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->sigAlgParams:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSignature()[B
    .locals 1

    .line 514
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->getSignature()Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getOctets()[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getTBSCertList()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 504
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->getTBSCertList()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 506
    :catch_0
    move-exception v0

    .line 508
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CRLException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api getThisUpdate()Ljava/util/Date;
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->getThisUpdate()Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;->getDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getVersion()I
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->getVersionNumber()I

    move-result v0

    return v0
.end method

.method public whitelist test-api hasUnsupportedCriticalExtension()Z
    .locals 2

    .line 93
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    .line 95
    .local v0, "extns":Ljava/util/Set;
    if-nez v0, :cond_0

    .line 97
    const/4 v1, 0x0

    return v1

    .line 100
    :cond_0
    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 101
    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->deltaCRLIndicator:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 103
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public whitelist test-api isRevoked(Ljava/security/cert/Certificate;)Z
    .locals 8
    .param p1, "cert"    # Ljava/security/cert/Certificate;

    .line 653
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "X.509"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 658
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->getRevokedCertificateEnumeration()Ljava/util/Enumeration;

    move-result-object v0

    .line 660
    .local v0, "certs":Ljava/util/Enumeration;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->getIssuer()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    .line 662
    .local v1, "caName":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 664
    move-object v2, p1

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    .line 666
    .local v2, "serial":Ljava/math/BigInteger;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 668
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    move-result-object v4

    .line 670
    .local v4, "entry":Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    iget-boolean v5, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->isIndirect:Z

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->hasExtensions()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 672
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v5

    sget-object v6, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->certificateIssuer:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v5

    .line 674
    .local v5, "currentCaName":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    if-eqz v5, :cond_0

    .line 676
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getParsedValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v6

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    .line 680
    .end local v5    # "currentCaName":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    :cond_0
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getUserCertificate()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->hasValue(Ljava/math/BigInteger;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 684
    instance-of v5, p1, Ljava/security/cert/X509Certificate;

    if-eqz v5, :cond_1

    .line 686
    move-object v5, p1

    check-cast v5, Ljava/security/cert/X509Certificate;

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v5

    .local v5, "issuer":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    goto :goto_1

    .line 692
    .end local v5    # "issuer":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getIssuer()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v5
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 697
    .restart local v5    # "issuer":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    nop

    .line 700
    :goto_1
    invoke-virtual {v1, v5}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 702
    return v3

    .line 705
    :cond_2
    const/4 v3, 0x1

    return v3

    .line 694
    .end local v5    # "issuer":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    :catch_0
    move-exception v3

    .line 696
    .local v3, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot process certificate: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 707
    .end local v3    # "e":Ljava/security/cert/CertificateEncodingException;
    .end local v4    # "entry":Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    :cond_3
    goto/16 :goto_0

    .line 710
    .end local v2    # "serial":Ljava/math/BigInteger;
    :cond_4
    return v3

    .line 655
    .end local v0    # "certs":Ljava/util/Enumeration;
    .end local v1    # "caName":Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "X.509 CRL used with non X.509 Cert"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 12

    .line 539
    const-string v0, " value = "

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 540
    .local v1, "buf":Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/android/internal/org/bouncycastle/util/Strings;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    .line 542
    .local v2, "nl":Ljava/lang/String;
    const-string v3, "              Version: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->getVersion()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 544
    const-string v3, "             IssuerDN: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->getIssuerDN()Ljava/security/Principal;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 545
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 546
    const-string v3, "          This update: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->getThisUpdate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 547
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 548
    const-string v3, "          Next update: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->getNextUpdate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 549
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 550
    const-string v3, "  Signature Algorithm: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->getSigAlgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 551
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 553
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->getSignature()[B

    move-result-object v3

    invoke-static {v3, v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509SignatureUtil;->prettyPrintSignature([BLjava/lang/StringBuffer;Ljava/lang/String;)V

    .line 555
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->getTBSCertList()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v3

    .line 557
    .local v3, "extensions":Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    if-eqz v3, :cond_7

    .line 559
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v4

    .line 561
    .local v4, "e":Ljava/util/Enumeration;
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 563
    const-string v5, "           Extensions: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 566
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 568
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 569
    .local v5, "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v3, v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v6

    .line 571
    .local v6, "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 573
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v7

    .line 574
    .local v7, "octs":[B
    new-instance v8, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v8, v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 575
    .local v8, "dIn":Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;
    const-string v9, "                       critical("

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 576
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    move-result v10

    .line 575
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 576
    const-string v10, ") "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 579
    :try_start_0
    sget-object v9, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->cRLNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 581
    new-instance v9, Lcom/android/internal/org/bouncycastle/asn1/x509/CRLNumber;

    .line 583
    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v10

    .line 582
    invoke-static {v10}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v10

    .line 583
    invoke-virtual {v10}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/internal/org/bouncycastle/asn1/x509/CRLNumber;-><init>(Ljava/math/BigInteger;)V

    .line 581
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 584
    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 586
    :cond_1
    sget-object v9, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->deltaCRLIndicator:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 588
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Base CRL: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v10, Lcom/android/internal/org/bouncycastle/asn1/x509/CRLNumber;

    .line 591
    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v11

    .line 590
    invoke-static {v11}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v11

    .line 591
    invoke-virtual {v11}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/internal/org/bouncycastle/asn1/x509/CRLNumber;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 588
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 592
    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 594
    :cond_2
    sget-object v9, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 595
    invoke-virtual {v5, v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 597
    nop

    .line 598
    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v9

    .line 597
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 598
    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 600
    :cond_3
    sget-object v9, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->cRLDistributionPoints:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 601
    invoke-virtual {v5, v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 603
    nop

    .line 604
    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/org/bouncycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/CRLDistPoint;

    move-result-object v9

    .line 603
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 604
    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 606
    :cond_4
    sget-object v9, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->freshestCRL:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 608
    nop

    .line 609
    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/org/bouncycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/CRLDistPoint;

    move-result-object v9

    .line 608
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 609
    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 613
    :cond_5
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 614
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 615
    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/org/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 614
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 616
    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    :goto_1
    goto :goto_2

    .line 619
    :catch_0
    move-exception v9

    .line 621
    .local v9, "ex":Ljava/lang/Exception;
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 622
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "*****"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 624
    .end local v7    # "octs":[B
    .end local v8    # "dIn":Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;
    .end local v9    # "ex":Ljava/lang/Exception;
    :goto_2
    goto :goto_3

    .line 627
    :cond_6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 629
    .end local v5    # "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v6    # "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    :goto_3
    goto/16 :goto_0

    .line 631
    .end local v4    # "e":Ljava/util/Enumeration;
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->getRevokedCertificates()Ljava/util/Set;

    move-result-object v0

    .line 632
    .local v0, "set":Ljava/util/Set;
    if-eqz v0, :cond_8

    .line 634
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 635
    .local v4, "it":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 637
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 638
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 641
    .end local v4    # "it":Ljava/util/Iterator;
    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public whitelist test-api verify(Ljava/security/PublicKey;)V
    .locals 1
    .param p1, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 179
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl$1;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl$1;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;)V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->doVerify(Ljava/security/PublicKey;Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/SignatureCreator;)V

    .line 194
    return-void
.end method

.method public whitelist test-api verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 200
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl$2;

    invoke-direct {v0, p0, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl$2;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->doVerify(Ljava/security/PublicKey;Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/SignatureCreator;)V

    .line 215
    return-void
.end method

.method public whitelist test-api verify(Ljava/security/PublicKey;Ljava/security/Provider;)V
    .locals 4
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 223
    :try_start_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl$3;

    invoke-direct {v0, p0, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl$3;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;Ljava/security/Provider;)V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;->doVerify(Ljava/security/PublicKey;Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/SignatureCreator;)V
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    nop

    .line 244
    return-void

    .line 239
    :catch_0
    move-exception v0

    .line 242
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
