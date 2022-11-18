.class public Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "TBSCertificate.java"


# instance fields
.field blacklist endDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

.field blacklist extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

.field blacklist issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

.field blacklist issuerUniqueId:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

.field blacklist seq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

.field blacklist serialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

.field blacklist signature:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field blacklist startDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

.field blacklist subject:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

.field blacklist subjectPublicKeyInfo:Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

.field blacklist subjectUniqueId:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

.field blacklist version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 9
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 80
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 81
    const/4 v0, 0x0

    .line 83
    .local v0, "seqStart":I
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->seq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 88
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    instance-of v2, v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    .line 90
    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {v2, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    goto :goto_0

    .line 94
    :cond_0
    const/4 v0, -0x1

    .line 95
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v2, v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 98
    :goto_0
    const/4 v2, 0x0

    .line 99
    .local v2, "isV1":Z
    const/4 v6, 0x0

    .line 101
    .local v6, "isV2":Z
    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->hasValue(Ljava/math/BigInteger;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 103
    const/4 v2, 0x1

    goto :goto_1

    .line 105
    :cond_1
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v7, 0x1

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->hasValue(Ljava/math/BigInteger;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 107
    const/4 v6, 0x1

    goto :goto_1

    .line 109
    :cond_2
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v7, 0x2

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->hasValue(Ljava/math/BigInteger;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 114
    :goto_1
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->serialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 116
    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->signature:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 117
    add-int/lit8 v3, v0, 0x3

    invoke-virtual {p1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 122
    add-int/lit8 v3, v0, 0x4

    invoke-virtual {p1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 124
    .local v3, "dates":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v3, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->startDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    .line 125
    invoke-virtual {v3, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->endDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    .line 127
    add-int/lit8 v4, v0, 0x5

    invoke-virtual {p1, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->subject:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 132
    add-int/lit8 v4, v0, 0x6

    invoke-virtual {p1, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->subjectPublicKeyInfo:Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 134
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    add-int/lit8 v7, v0, 0x6

    sub-int/2addr v4, v7

    sub-int/2addr v4, v5

    .line 135
    .local v4, "extras":I
    if-eqz v4, :cond_4

    if-nez v2, :cond_3

    goto :goto_2

    .line 137
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "version 1 certificate contains extra data"

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 140
    :cond_4
    :goto_2
    if-lez v4, :cond_6

    .line 142
    add-int/lit8 v7, v0, 0x6

    add-int/2addr v7, v4

    invoke-virtual {p1, v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    check-cast v7, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 144
    .local v7, "extra":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 160
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown tag encountered in structure: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 153
    :pswitch_0
    if-nez v6, :cond_5

    .line 157
    invoke-static {v7, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 158
    goto :goto_3

    .line 155
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "version 2 certificate cannot contain extensions"

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 150
    :pswitch_1
    invoke-static {v7, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->subjectUniqueId:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    .line 151
    goto :goto_3

    .line 147
    :pswitch_2
    invoke-static {v7, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->issuerUniqueId:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    .line 148
    nop

    .line 162
    :goto_3
    nop

    .end local v7    # "extra":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    add-int/lit8 v4, v4, -0x1

    .line 163
    goto :goto_2

    .line 164
    :cond_6
    return-void

    .line 111
    .end local v3    # "dates":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .end local v4    # "extras":I
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "version number not recognised"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;
    .locals 1
    .param p0, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 60
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 66
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    if-eqz v0, :cond_0

    .line 68
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    return-object v0

    .line 70
    :cond_0
    if-eqz p0, :cond_1

    .line 72
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 75
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getEndDate()Lcom/android/internal/org/bouncycastle/asn1/x509/Time;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->endDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    return-object v0
.end method

.method public blacklist getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    return-object v0
.end method

.method public blacklist getIssuer()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    return-object v0
.end method

.method public blacklist getIssuerUniqueId()Lcom/android/internal/org/bouncycastle/asn1/DERBitString;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->issuerUniqueId:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    return-object v0
.end method

.method public blacklist getSerialNumber()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->serialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public blacklist getSignature()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->signature:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public blacklist getStartDate()Lcom/android/internal/org/bouncycastle/asn1/x509/Time;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->startDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    return-object v0
.end method

.method public blacklist getSubject()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->subject:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    return-object v0
.end method

.method public blacklist getSubjectPublicKeyInfo()Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->subjectPublicKeyInfo:Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    return-object v0
.end method

.method public blacklist getSubjectUniqueId()Lcom/android/internal/org/bouncycastle/asn1/DERBitString;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->subjectUniqueId:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    return-object v0
.end method

.method public blacklist getVersion()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public blacklist getVersionNumber()I
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 6

    .line 228
    const-string v0, "com.android.internal.org.bouncycastle.x509.allow_non-der_tbscert"

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Properties;->getPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 230
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Properties;->isOverrideSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->seq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    return-object v0

    .line 240
    :cond_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 243
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    sget-object v2, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->hasValue(Ljava/math/BigInteger;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 245
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 248
    :cond_1
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->serialNumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 249
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->signature:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 250
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 256
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v4, 0x2

    invoke-direct {v1, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 257
    .local v1, "validity":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->startDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    invoke-virtual {v1, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 258
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->endDate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    invoke-virtual {v1, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 260
    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v5, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 263
    .end local v1    # "validity":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->subject:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    if-eqz v1, :cond_2

    .line 265
    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 269
    :cond_2
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 272
    :goto_0
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->subjectPublicKeyInfo:Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 275
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->issuerUniqueId:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    if-eqz v1, :cond_3

    .line 277
    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {v5, v2, v3, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 281
    :cond_3
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->subjectUniqueId:Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    if-eqz v1, :cond_4

    .line 283
    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {v5, v2, v4, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 286
    :cond_4
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->extensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    if-eqz v1, :cond_5

    .line 288
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 291
    :cond_5
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1

    .line 237
    .end local v0    # "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_6
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->seq:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method
