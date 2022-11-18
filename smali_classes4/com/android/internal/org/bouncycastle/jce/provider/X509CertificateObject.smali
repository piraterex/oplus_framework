.class public Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;
.super Ljava/security/cert/X509Certificate;
.source "X509CertificateObject.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;


# instance fields
.field private blacklist attrCarrier:Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

.field private blacklist basicConstraints:Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;

.field private blacklist c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

.field private blacklist encoded:[B

.field private blacklist hashValue:I

.field private blacklist hashValueSet:Z

.field private blacklist keyUsage:[Z


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;)V
    .locals 8
    .param p1, "c"    # Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    .line 85
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->attrCarrier:Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 91
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    .line 95
    :try_start_0
    const-string v0, "2.5.29.19"

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->getExtensionBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 97
    .local v0, "bytes":[B
    if-eqz v0, :cond_0

    .line 99
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->basicConstraints:Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 105
    .end local v0    # "bytes":[B
    :cond_0
    nop

    .line 109
    :try_start_1
    const-string v0, "2.5.29.15"

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->getExtensionBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 110
    .restart local v0    # "bytes":[B
    if-eqz v0, :cond_4

    .line 112
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    move-result-object v1

    .line 114
    .local v1, "bits":Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v2

    move-object v0, v2

    .line 115
    array-length v2, v0

    mul-int/lit8 v2, v2, 0x8

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getPadBits()I

    move-result v3

    sub-int/2addr v2, v3

    .line 117
    .local v2, "length":I
    const/16 v3, 0x9

    if-ge v2, v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    new-array v3, v3, [Z

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->keyUsage:[Z

    .line 119
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-eq v3, v2, :cond_3

    .line 121
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->keyUsage:[Z

    div-int/lit8 v5, v3, 0x8

    aget-byte v5, v0, v5

    const/16 v6, 0x80

    rem-int/lit8 v7, v3, 0x8

    ushr-int/2addr v6, v7

    and-int/2addr v5, v6

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    aput-boolean v5, v4, v3

    .line 119
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 123
    .end local v1    # "bits":Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;
    .end local v2    # "length":I
    .end local v3    # "i":I
    :cond_3
    goto :goto_3

    .line 126
    :cond_4
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->keyUsage:[Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 132
    .end local v0    # "bytes":[B
    :goto_3
    nop

    .line 133
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 131
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

    .line 102
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 104
    .restart local v0    # "e":Ljava/lang/Exception;
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

.method private blacklist calculateHashCode()I
    .locals 4

    .line 620
    const/4 v0, 0x0

    .line 621
    .local v0, "hashCode":I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->getEncoded()[B

    move-result-object v1

    .line 622
    .local v1, "certData":[B
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 624
    aget-byte v3, v1, v2
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    mul-int/2addr v3, v2

    add-int/2addr v0, v3

    .line 622
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 626
    .end local v2    # "i":I
    :cond_0
    return v0

    .line 628
    .end local v0    # "hashCode":I
    .end local v1    # "certData":[B
    :catch_0
    move-exception v0

    .line 630
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist checkSignature(Ljava/security/PublicKey;Ljava/security/Signature;)V
    .locals 3
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "signature"    # Ljava/security/Signature;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 816
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->getSignature()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->isAlgIdEqual(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 821
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    .line 824
    .local v0, "params":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    invoke-static {p2, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/X509SignatureUtil;->setSignatureParameters(Ljava/security/Signature;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 826
    invoke-virtual {p2, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 828
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->getTBSCertificate()[B

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/security/Signature;->update([B)V

    .line 830
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->getSignature()[B

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 834
    return-void

    .line 832
    :cond_0
    new-instance v1, Ljava/security/SignatureException;

    const-string v2, "certificate does not verify with supplied key"

    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 818
    .end local v0    # "params":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    :cond_1
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string/jumbo v1, "signature algorithm in TBS cert not same as outer cert"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist getAlternativeNames([B)Ljava/util/Collection;
    .locals 8
    .param p0, "extVal"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 869
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 871
    return-object v0

    .line 875
    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 876
    .local v1, "temp":Ljava/util/Collection;
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v2

    .line 877
    .local v2, "it":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 879
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v3

    .line 880
    .local v3, "genName":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 881
    .local v4, "list":Ljava/util/List;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v5

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 882
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 916
    new-instance v0, Ljava/io/IOException;

    goto :goto_2

    .line 900
    :pswitch_0
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 901
    goto :goto_1

    .line 903
    :pswitch_1
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 907
    .local v5, "addrBytes":[B
    :try_start_1
    invoke-static {v5}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 912
    .local v6, "addr":Ljava/lang/String;
    nop

    .line 913
    :try_start_2
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 914
    goto :goto_1

    .line 909
    .end local v6    # "addr":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 911
    .local v6, "e":Ljava/net/UnknownHostException;
    goto :goto_0

    .line 891
    .end local v5    # "addrBytes":[B
    .end local v6    # "e":Ljava/net/UnknownHostException;
    :pswitch_2
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;

    move-result-object v5

    const/4 v6, 0x1

    sget-object v7, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/org/bouncycastle/asn1/x509/X509Name;->toString(ZLjava/util/Hashtable;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 893
    goto :goto_1

    .line 897
    :pswitch_3
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    check-cast v5, Lcom/android/internal/org/bouncycastle/asn1/ASN1String;

    invoke-interface {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 898
    goto :goto_1

    .line 887
    :pswitch_4
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getEncoded()[B

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 888
    nop

    .line 919
    :goto_1
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 920
    nop

    .end local v3    # "genName":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .end local v4    # "list":Ljava/util/List;
    goto/16 :goto_0

    .line 916
    .restart local v3    # "genName":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .restart local v4    # "list":Ljava/util/List;
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad tag number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "extVal":[B
    throw v0

    .line 921
    .end local v3    # "genName":Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;
    .end local v4    # "list":Ljava/util/List;
    .restart local p0    # "extVal":[B
    :cond_1
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 923
    return-object v0

    .line 925
    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v0

    .line 927
    .end local v1    # "temp":Ljava/util/Collection;
    .end local v2    # "it":Ljava/util/Enumeration;
    :catch_1
    move-exception v0

    .line 929
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/cert/CertificateParsingException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

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

.method private blacklist getExtensionBytes(Ljava/lang/String;)[B
    .locals 3
    .param p1, "oid"    # Ljava/lang/String;

    .line 434
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    .line 436
    .local v0, "exts":Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    if-eqz v0, :cond_0

    .line 438
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v1

    .line 439
    .local v1, "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    if-eqz v1, :cond_0

    .line 441
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    return-object v2

    .line 445
    .end local v1    # "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist isAlgIdEqual(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Z
    .locals 4
    .param p1, "id1"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "id2"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 838
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 840
    return v1

    .line 843
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 845
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 847
    return v1

    .line 850
    :cond_1
    return v2

    .line 853
    :cond_2
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-nez v0, :cond_4

    .line 855
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    sget-object v3, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 857
    return v1

    .line 860
    :cond_3
    return v2

    .line 863
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
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

    .line 138
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->checkValidity(Ljava/util/Date;)V

    .line 139
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

    .line 145
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->getNotAfter()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 150
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->getNotBefore()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 154
    return-void

    .line 152
    :cond_0
    new-instance v0, Ljava/security/cert/CertificateNotYetValidException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "certificate not valid till "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

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

    .line 147
    :cond_1
    new-instance v0, Ljava/security/cert/CertificateExpiredException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "certificate expired on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

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

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 580
    if-ne p1, p0, :cond_0

    .line 582
    const/4 v0, 0x1

    return v0

    .line 585
    :cond_0
    instance-of v0, p1, Ljava/security/cert/Certificate;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 587
    return v1

    .line 590
    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/security/cert/Certificate;

    .line 594
    .local v0, "other":Ljava/security/cert/Certificate;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->getEncoded()[B

    move-result-object v2

    .line 595
    .local v2, "b1":[B
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    .line 597
    .local v3, "b2":[B
    invoke-static {v2, v3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v1
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 599
    .end local v2    # "b1":[B
    .end local v3    # "b2":[B
    :catch_0
    move-exception v2

    .line 601
    .local v2, "e":Ljava/security/cert/CertificateEncodingException;
    return v1
.end method

.method public blacklist getBagAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .locals 1
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 644
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->attrCarrier:Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    invoke-interface {v0, p1}, Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getBagAttributeKeys()Ljava/util/Enumeration;
    .locals 1

    .line 649
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->attrCarrier:Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getBasicConstraints()I
    .locals 2

    .line 369
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->basicConstraints:Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    .line 371
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->basicConstraints:Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;->getPathLenConstraint()Ljava/math/BigInteger;

    move-result-object v0

    if-nez v0, :cond_0

    .line 375
    const v0, 0x7fffffff

    return v0

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->basicConstraints:Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;->getPathLenConstraint()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0

    .line 384
    :cond_1
    return v1

    .line 388
    :cond_2
    return v1
.end method

.method public whitelist test-api getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 6

    .line 405
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->getVersion()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 407
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 408
    .local v0, "set":Ljava/util/Set;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v1

    .line 410
    .local v1, "extensions":Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    if-eqz v1, :cond_2

    .line 412
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v2

    .line 414
    .local v2, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 416
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 417
    .local v3, "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v4

    .line 419
    .local v4, "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 421
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 423
    .end local v3    # "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v4    # "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    :cond_0
    goto :goto_0

    .line 425
    :cond_1
    return-object v0

    .line 429
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

    .line 565
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->encoded:[B

    if-nez v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->encoded:[B

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->encoded:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 571
    :catch_0
    move-exception v0

    .line 573
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api getExtendedKeyUsage()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 341
    const-string v0, "2.5.29.37"

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->getExtensionBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 343
    .local v0, "bytes":[B
    if-eqz v0, :cond_1

    .line 347
    :try_start_0
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 348
    .local v1, "dIn":Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 349
    .local v2, "seq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 351
    .local v3, "list":Ljava/util/List;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 353
    invoke-virtual {v2, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    check-cast v5, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 356
    .end local v4    # "i":I
    :cond_0
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 358
    .end local v1    # "dIn":Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;
    .end local v2    # "seq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v3    # "list":Ljava/util/List;
    :catch_0
    move-exception v1

    .line 360
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/cert/CertificateParsingException;

    const-string v3, "error processing extended key usage extension"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 364
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist test-api getExtensionValue(Ljava/lang/String;)[B
    .locals 6
    .param p1, "oid"    # Ljava/lang/String;

    .line 450
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    .line 452
    .local v0, "exts":Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    if-eqz v0, :cond_0

    .line 454
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v1

    .line 456
    .local v1, "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    if-eqz v1, :cond_0

    .line 460
    :try_start_0
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getEncoded()[B

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 462
    :catch_0
    move-exception v2

    .line 464
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error parsing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 469
    .end local v1    # "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist test-api getIssuerAlternativeNames()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 400
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->issuerAlternativeName:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->getExtensionBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->getAlternativeNames([B)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getIssuerDN()Ljava/security/Principal;
    .locals 2

    .line 168
    new-instance v0, Lcom/android/internal/org/bouncycastle/jce/X509Principal;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getIssuer()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/jce/X509Principal;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)V

    return-object v0
.end method

.method public whitelist test-api getIssuerUniqueID()[Z
    .locals 7

    .line 295
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->getIssuerUniqueId()Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    move-result-object v0

    .line 297
    .local v0, "id":Lcom/android/internal/org/bouncycastle/asn1/DERBitString;
    if-eqz v0, :cond_2

    .line 299
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v1

    .line 300
    .local v1, "bytes":[B
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x8

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getPadBits()I

    move-result v3

    sub-int/2addr v2, v3

    new-array v2, v2, [Z

    .line 302
    .local v2, "boolId":[Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-eq v3, v4, :cond_1

    .line 304
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

    .line 302
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 307
    .end local v3    # "i":I
    :cond_1
    return-object v2

    .line 310
    .end local v1    # "bytes":[B
    .end local v2    # "boolId":[Z
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist test-api getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 3

    .line 175
    :try_start_0
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getIssuer()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 177
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "can\'t encode issuer DN"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api getKeyUsage()[Z
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->keyUsage:[Z

    return-object v0
.end method

.method public whitelist test-api getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 6

    .line 474
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->getVersion()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 476
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 477
    .local v0, "set":Ljava/util/Set;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v1

    .line 479
    .local v1, "extensions":Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    if-eqz v1, :cond_2

    .line 481
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v2

    .line 483
    .local v2, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 485
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 486
    .local v3, "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v1, v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v4

    .line 488
    .local v4, "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    move-result v5

    if-nez v5, :cond_0

    .line 490
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 492
    .end local v3    # "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v4    # "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    :cond_0
    goto :goto_0

    .line 494
    :cond_1
    return-object v0

    .line 498
    .end local v0    # "set":Ljava/util/Set;
    .end local v1    # "extensions":Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    .end local v2    # "e":Ljava/util/Enumeration;
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getNotAfter()Ljava/util/Date;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getEndDate()Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;->getDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getNotBefore()Ljava/util/Date;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getStartDate()Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;->getDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getPublicKey()Ljava/security/PublicKey;
    .locals 2

    .line 548
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getSubjectPublicKeyInfo()Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->getPublicKey(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 550
    :catch_0
    move-exception v0

    .line 552
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist test-api getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getSerialNumber()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSigAlgName()Ljava/lang/String;
    .locals 7

    .line 234
    const-string v0, "BC"

    invoke-static {v0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    .line 236
    .local v0, "prov":Ljava/security/Provider;
    const-string v1, "Alg.Alias.Signature."

    if-eqz v0, :cond_0

    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->getSigAlgOID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 240
    .local v2, "algName":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 242
    return-object v2

    .line 246
    .end local v2    # "algName":Ljava/lang/String;
    :cond_0
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v2

    .line 251
    .local v2, "provs":[Ljava/security/Provider;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-eq v3, v4, :cond_2

    .line 253
    aget-object v4, v2, v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->getSigAlgOID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 254
    .local v4, "algName":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 256
    return-object v4

    .line 251
    .end local v4    # "algName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 260
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->getSigAlgOID()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api getSigAlgOID()Ljava/lang/String;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSigAlgParams()[B
    .locals 3

    .line 276
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 280
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    const-string v2, "DER"

    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 282
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Ljava/io/IOException;
    return-object v1

    .line 289
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    return-object v1
.end method

.method public whitelist test-api getSignature()[B
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getSignature()Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getOctets()[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSubjectAlternativeNames()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 394
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->subjectAlternativeName:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->getExtensionBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->getAlternativeNames([B)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSubjectDN()Ljava/security/Principal;
    .locals 2

    .line 185
    new-instance v0, Lcom/android/internal/org/bouncycastle/jce/X509Principal;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getSubject()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/jce/X509Principal;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)V

    return-object v0
.end method

.method public whitelist test-api getSubjectUniqueID()[Z
    .locals 7

    .line 315
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->getSubjectUniqueId()Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    move-result-object v0

    .line 317
    .local v0, "id":Lcom/android/internal/org/bouncycastle/asn1/DERBitString;
    if-eqz v0, :cond_2

    .line 319
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v1

    .line 320
    .local v1, "bytes":[B
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x8

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getPadBits()I

    move-result v3

    sub-int/2addr v2, v3

    new-array v2, v2, [Z

    .line 322
    .local v2, "boolId":[Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-eq v3, v4, :cond_1

    .line 324
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

    .line 322
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 327
    .end local v3    # "i":I
    :cond_1
    return-object v2

    .line 330
    .end local v1    # "bytes":[B
    .end local v2    # "boolId":[Z
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist test-api getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 3

    .line 192
    :try_start_0
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getSubject()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 194
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "can\'t encode issuer DN"

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

    .line 215
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 217
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api getVersion()I
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getVersionNumber()I

    move-result v0

    return v0
.end method

.method public whitelist test-api hasUnsupportedCriticalExtension()Z
    .locals 6

    .line 503
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->getVersion()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 505
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    .line 507
    .local v0, "extensions":Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    if-eqz v0, :cond_3

    .line 509
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v1

    .line 511
    .local v1, "e":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 513
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 514
    .local v2, "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    .line 516
    .local v3, "oidId":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->KEY_USAGE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    .line 517
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    .line 518
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    .line 519
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    .line 520
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    .line 521
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    .line 522
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    .line 523
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    .line 524
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    .line 525
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/android/internal/org/bouncycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    .line 526
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 528
    goto :goto_0

    .line 531
    :cond_1
    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v4

    .line 533
    .local v4, "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 535
    const/4 v5, 0x1

    return v5

    .line 537
    .end local v2    # "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v3    # "oidId":Ljava/lang/String;
    .end local v4    # "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    :cond_2
    goto :goto_0

    .line 541
    .end local v0    # "extensions":Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    .end local v1    # "e":Ljava/util/Enumeration;
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized whitelist test-api hashCode()I
    .locals 1

    monitor-enter p0

    .line 607
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->hashValueSet:Z

    if-nez v0, :cond_0

    .line 609
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->calculateHashCode()I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->hashValue:I

    .line 610
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->hashValueSet:Z

    .line 613
    .end local p0    # "this":Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;
    :cond_0
    iget v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->hashValue:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 606
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist setBagAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "oid"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "attribute"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 638
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->attrCarrier:Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/org/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 639
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 13

    .line 654
    const-string v0, " value = "

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 655
    .local v1, "buf":Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/android/internal/org/bouncycastle/util/Strings;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    .line 657
    .local v2, "nl":Ljava/lang/String;
    const-string v3, "  [0]         Version: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->getVersion()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 658
    const-string v3, "         SerialNumber: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 659
    const-string v3, "             IssuerDN: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->getIssuerDN()Ljava/security/Principal;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 660
    const-string v3, "           Start Date: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->getNotBefore()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 661
    const-string v3, "           Final Date: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->getNotAfter()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 662
    const-string v3, "            SubjectDN: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->getSubjectDN()Ljava/security/Principal;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 663
    const-string v3, "           Public Key: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 664
    const-string v3, "  Signature Algorithm: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->getSigAlgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 666
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->getSignature()[B

    move-result-object v3

    .line 668
    .local v3, "sig":[B
    const-string v4, "            Signature: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    const/16 v7, 0x14

    invoke-static {v3, v6, v7}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->encode([BII)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 669
    const/16 v4, 0x14

    .local v4, "i":I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_1

    .line 671
    array-length v5, v3

    sub-int/2addr v5, v7

    const-string v6, "                       "

    if-ge v4, v5, :cond_0

    .line 673
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    invoke-static {v3, v4, v7}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->encode([BII)[B

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 677
    :cond_0
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    array-length v8, v3

    sub-int/2addr v8, v4

    invoke-static {v3, v4, v8}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->encode([BII)[B

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 669
    :goto_1
    add-int/lit8 v4, v4, 0x14

    goto :goto_0

    .line 681
    .end local v4    # "i":I
    :cond_1
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v4

    .line 683
    .local v4, "extensions":Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    if-eqz v4, :cond_9

    .line 685
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v5

    .line 687
    .local v5, "e":Ljava/util/Enumeration;
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 689
    const-string v6, "       Extensions: \n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 692
    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 694
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 695
    .local v6, "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v4, v6}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtension(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;

    move-result-object v7

    .line 697
    .local v7, "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 699
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->getExtnValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v8

    .line 700
    .local v8, "octs":[B
    new-instance v9, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v9, v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 701
    .local v9, "dIn":Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;
    const-string v10, "                       critical("

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->isCritical()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, ") "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 704
    :try_start_0
    sget-object v10, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->basicConstraints:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6, v10}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 706
    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 708
    :cond_3
    sget-object v10, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->keyUsage:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6, v10}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 710
    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/org/bouncycastle/asn1/x509/KeyUsage;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/KeyUsage;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 712
    :cond_4
    sget-object v10, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscapeCertType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6, v10}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 714
    new-instance v10, Lcom/android/internal/org/bouncycastle/asn1/misc/NetscapeCertType;

    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v11

    check-cast v11, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    invoke-direct {v10, v11}, Lcom/android/internal/org/bouncycastle/asn1/misc/NetscapeCertType;-><init>(Lcom/android/internal/org/bouncycastle/asn1/DERBitString;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 716
    :cond_5
    sget-object v10, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscapeRevocationURL:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6, v10}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 718
    new-instance v10, Lcom/android/internal/org/bouncycastle/asn1/misc/NetscapeRevocationURL;

    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v11

    check-cast v11, Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;

    invoke-direct {v10, v11}, Lcom/android/internal/org/bouncycastle/asn1/misc/NetscapeRevocationURL;-><init>(Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 720
    :cond_6
    sget-object v10, Lcom/android/internal/org/bouncycastle/asn1/misc/MiscObjectIdentifiers;->verisignCzagExtension:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6, v10}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 722
    new-instance v10, Lcom/android/internal/org/bouncycastle/asn1/misc/VerisignCzagExtension;

    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v11

    check-cast v11, Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;

    invoke-direct {v10, v11}, Lcom/android/internal/org/bouncycastle/asn1/misc/VerisignCzagExtension;-><init>(Lcom/android/internal/org/bouncycastle/asn1/DERIA5String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 726
    :cond_7
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 727
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/org/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 736
    :goto_3
    goto :goto_4

    .line 731
    :catch_0
    move-exception v10

    .line 733
    .local v10, "ex":Ljava/lang/Exception;
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 735
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, "*****"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 737
    .end local v8    # "octs":[B
    .end local v9    # "dIn":Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;
    .end local v10    # "ex":Ljava/lang/Exception;
    :goto_4
    goto :goto_5

    .line 740
    :cond_8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 742
    .end local v6    # "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v7    # "ext":Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;
    :goto_5
    goto/16 :goto_2

    .line 745
    .end local v5    # "e":Ljava/util/Enumeration;
    :cond_9
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api verify(Ljava/security/PublicKey;)V
    .locals 3
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

    .line 754
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/X509SignatureUtil;->getSignatureName(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 758
    .local v0, "sigName":Ljava/lang/String;
    :try_start_0
    const-string v1, "BC"

    invoke-static {v0, v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 763
    .local v1, "signature":Ljava/security/Signature;
    goto :goto_0

    .line 760
    .end local v1    # "signature":Ljava/security/Signature;
    :catch_0
    move-exception v1

    .line 762
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v2

    move-object v1, v2

    .line 765
    .local v1, "signature":Ljava/security/Signature;
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->checkSignature(Ljava/security/PublicKey;Ljava/security/Signature;)V

    .line 766
    return-void
.end method

.method public final whitelist test-api verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 2
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

    .line 774
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/X509SignatureUtil;->getSignatureName(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 777
    .local v0, "sigName":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 779
    invoke-static {v0, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .local v1, "signature":Ljava/security/Signature;
    goto :goto_0

    .line 783
    .end local v1    # "signature":Ljava/security/Signature;
    :cond_0
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 786
    .restart local v1    # "signature":Ljava/security/Signature;
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->checkSignature(Ljava/security/PublicKey;Ljava/security/Signature;)V

    .line 787
    return-void
.end method

.method public final whitelist test-api verify(Ljava/security/PublicKey;Ljava/security/Provider;)V
    .locals 2
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

    .line 795
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->c:Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/X509SignatureUtil;->getSignatureName(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 798
    .local v0, "sigName":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 800
    invoke-static {v0, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object v1

    .local v1, "signature":Ljava/security/Signature;
    goto :goto_0

    .line 804
    .end local v1    # "signature":Ljava/security/Signature;
    :cond_0
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 807
    .restart local v1    # "signature":Ljava/security/Signature;
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/android/internal/org/bouncycastle/jce/provider/X509CertificateObject;->checkSignature(Ljava/security/PublicKey;Ljava/security/Signature;)V

    .line 808
    return-void
.end method
