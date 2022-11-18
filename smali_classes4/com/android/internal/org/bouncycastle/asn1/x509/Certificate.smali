.class public Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "Certificate.java"


# instance fields
.field blacklist seq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

.field blacklist sig:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

.field blacklist sigAlgId:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field blacklist tbsCert:Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 55
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->seq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 61
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 63
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->tbsCert:Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    .line 64
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->sigAlgId:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 66
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->sig:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    .line 72
    return-void

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sequence wrong size for a certificate"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;
    .locals 1
    .param p0, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 35
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 41
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    if-eqz v0, :cond_0

    .line 43
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    return-object v0

    .line 45
    :cond_0
    if-eqz p0, :cond_1

    .line 47
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 50
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getEndDate()Lcom/android/internal/org/bouncycastle/asn1/x509/Time;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->tbsCert:Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->getEndDate()Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getIssuer()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->tbsCert:Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->getIssuer()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSerialNumber()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->tbsCert:Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->getSerialNumber()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSignature()Lcom/android/internal/org/bouncycastle/asn1/DERBitString;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->sig:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    return-object v0
.end method

.method public blacklist getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->sigAlgId:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public blacklist getStartDate()Lcom/android/internal/org/bouncycastle/asn1/x509/Time;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->tbsCert:Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->getStartDate()Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSubject()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->tbsCert:Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->getSubject()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSubjectPublicKeyInfo()Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->tbsCert:Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->getSubjectPublicKeyInfo()Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTBSCertificate()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->tbsCert:Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    return-object v0
.end method

.method public blacklist getVersion()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->tbsCert:Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->getVersion()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getVersionNumber()I
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->tbsCert:Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->getVersionNumber()I

    move-result v0

    return v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->seq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method
