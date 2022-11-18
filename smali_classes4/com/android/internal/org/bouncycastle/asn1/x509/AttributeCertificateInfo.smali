.class public Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "AttributeCertificateInfo.java"


# instance fields
.field private blacklist attrCertValidityPeriod:Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertValidityPeriod;

.field private blacklist attributes:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

.field private blacklist extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

.field private blacklist holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

.field private blacklist issuer:Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertIssuer;

.field private blacklist issuerUniqueID:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

.field private blacklist serialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

.field private blacklist signature:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private blacklist version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 54
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_5

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/16 v1, 0x9

    if-gt v0, v1, :cond_5

    .line 61
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    instance-of v1, v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_0

    .line 63
    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 64
    const/4 v0, 0x1

    .local v0, "start":I
    goto :goto_0

    .line 68
    .end local v0    # "start":I
    :cond_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 69
    const/4 v0, 0x0

    .line 72
    .restart local v0    # "start":I
    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    .line 73
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertIssuer;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertIssuer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->issuer:Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertIssuer;

    .line 74
    add-int/lit8 v1, v0, 0x2

    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->signature:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 75
    add-int/lit8 v1, v0, 0x3

    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->serialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 76
    add-int/lit8 v1, v0, 0x4

    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertValidityPeriod;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertValidityPeriod;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->attrCertValidityPeriod:Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertValidityPeriod;

    .line 77
    add-int/lit8 v1, v0, 0x5

    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->attributes:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 79
    add-int/lit8 v1, v0, 0x6

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 81
    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    .line 83
    .local v2, "obj":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    instance-of v3, v2, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    if-eqz v3, :cond_1

    .line 85
    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->issuerUniqueID:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    goto :goto_2

    .line 87
    :cond_1
    instance-of v3, v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    if-nez v3, :cond_2

    instance-of v3, v2, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    if-eqz v3, :cond_3

    .line 89
    :cond_2
    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 79
    .end local v2    # "obj":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 92
    .end local v1    # "i":I
    :cond_4
    return-void

    .line 57
    .end local v0    # "start":I
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;
    .locals 1
    .param p0, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 34
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 40
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    if-eqz v0, :cond_0

    .line 42
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    return-object v0

    .line 44
    :cond_0
    if-eqz p0, :cond_1

    .line 46
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 49
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getAttrCertValidityPeriod()Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertValidityPeriod;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->attrCertValidityPeriod:Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertValidityPeriod;

    return-object v0
.end method

.method public blacklist getAttributes()Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->attributes:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public blacklist getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    return-object v0
.end method

.method public blacklist getHolder()Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    return-object v0
.end method

.method public blacklist getIssuer()Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertIssuer;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->issuer:Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertIssuer;

    return-object v0
.end method

.method public blacklist getIssuerUniqueID()Lcom/android/internal/org/bouncycastle/asn1/DERBitString;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->issuerUniqueID:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    return-object v0
.end method

.method public blacklist getSerialNumber()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->serialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public blacklist getSignature()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->signature:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public blacklist getVersion()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 159
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 161
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->holder:Lcom/android/internal/org/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 166
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->issuer:Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertIssuer;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 167
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->signature:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 168
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->serialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 169
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->attrCertValidityPeriod:Lcom/android/internal/org/bouncycastle/asn1/x509/AttCertValidityPeriod;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 170
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->attributes:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 172
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->issuerUniqueID:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    if-eqz v1, :cond_1

    .line 174
    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 177
    :cond_1
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/AttributeCertificateInfo;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    if-eqz v1, :cond_2

    .line 179
    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 182
    :cond_2
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
