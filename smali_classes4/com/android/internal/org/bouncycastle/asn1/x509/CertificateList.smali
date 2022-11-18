.class public Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "CertificateList.java"


# instance fields
.field blacklist hashCodeValue:I

.field blacklist isHashCodeSet:Z

.field blacklist sig:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

.field blacklist sigAlgId:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field blacklist tbsCertList:Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 3
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 67
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->isHashCodeSet:Z

    .line 68
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 70
    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;

    .line 71
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->sigAlgId:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 72
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->sig:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    .line 78
    return-void

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sequence wrong size for CertificateList"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;
    .locals 1
    .param p0, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 43
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 49
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

    if-eqz v0, :cond_0

    .line 51
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

    return-object v0

    .line 53
    :cond_0
    if-eqz p0, :cond_1

    .line 55
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 58
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getIssuer()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->getIssuer()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getNextUpdate()Lcom/android/internal/org/bouncycastle/asn1/x509/Time;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->getNextUpdate()Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRevokedCertificateEnumeration()Ljava/util/Enumeration;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->getRevokedCertificateEnumeration()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRevokedCertificates()[Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->getRevokedCertificates()[Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSignature()Lcom/android/internal/org/bouncycastle/asn1/DERBitString;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->sig:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    return-object v0
.end method

.method public blacklist getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->sigAlgId:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public blacklist getTBSCertList()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;

    return-object v0
.end method

.method public blacklist getThisUpdate()Lcom/android/internal/org/bouncycastle/asn1/x509/Time;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->getThisUpdate()Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getVersionNumber()I
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->getVersionNumber()I

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 138
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->isHashCodeSet:Z

    if-nez v0, :cond_0

    .line 140
    invoke-super {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->hashCodeValue:I

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->isHashCodeSet:Z

    .line 144
    :cond_0
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->hashCodeValue:I

    return v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 127
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 129
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 130
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->sigAlgId:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 131
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/CertificateList;->sig:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 133
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
