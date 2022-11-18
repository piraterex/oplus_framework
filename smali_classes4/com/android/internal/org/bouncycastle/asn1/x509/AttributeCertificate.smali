.class public Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "AttributeCertificate.java"


# instance fields
.field blacklist acinfo:Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

.field blacklist signatureAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field blacklist signatureValue:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 3
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 54
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 61
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;->acinfo:Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    .line 62
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;->signatureAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 63
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;->signatureValue:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    .line 64
    return-void

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 58
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/DERBitString;)V
    .locals 0
    .param p1, "acinfo"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;
    .param p2, "signatureAlgorithm"    # Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "signatureValue"    # Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    .line 43
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;->acinfo:Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    .line 45
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;->signatureAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 46
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;->signatureValue:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    .line 47
    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 27
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    if-eqz v0, :cond_0

    .line 29
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    return-object v0

    .line 31
    :cond_0
    if-eqz p0, :cond_1

    .line 33
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 36
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getAcinfo()Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;->acinfo:Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    return-object v0
.end method

.method public blacklist getSignatureAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;->signatureAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public blacklist getSignatureValue()Lcom/android/internal/org/bouncycastle/asn1/DERBitString;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;->signatureValue:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 93
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 95
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;->acinfo:Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 96
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;->signatureAlgorithm:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 97
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificate;->signatureValue:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 99
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
