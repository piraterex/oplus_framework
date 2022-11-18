.class public Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "TBSCertList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$EmptyEnumeration;,
        Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$RevokedCertificatesEnumeration;,
        Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    }
.end annotation


# instance fields
.field blacklist crlExtensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

.field blacklist issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

.field blacklist nextUpdate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

.field blacklist revokedCertificates:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

.field blacklist signature:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field blacklist thisUpdate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

.field blacklist version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 3
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 177
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 178
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_5

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x7

    if-gt v0, v1, :cond_5

    .line 183
    const/4 v0, 0x0

    .line 185
    .local v0, "seqPos":I
    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    instance-of v1, v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_0

    .line 187
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "seqPos":I
    .local v1, "seqPos":I
    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    move v0, v1

    goto :goto_0

    .line 191
    .end local v1    # "seqPos":I
    .restart local v0    # "seqPos":I
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 194
    :goto_0
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "seqPos":I
    .restart local v1    # "seqPos":I
    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->signature:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 195
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "seqPos":I
    .restart local v0    # "seqPos":I
    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 196
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "seqPos":I
    .restart local v1    # "seqPos":I
    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->thisUpdate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    .line 198
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 199
    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1UTCTime;

    if-nez v0, :cond_1

    .line 200
    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1GeneralizedTime;

    if-nez v0, :cond_1

    .line 201
    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    if-eqz v0, :cond_2

    .line 203
    :cond_1
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "seqPos":I
    .restart local v0    # "seqPos":I
    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Time;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->nextUpdate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    move v1, v0

    .line 206
    .end local v0    # "seqPos":I
    .restart local v1    # "seqPos":I
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 207
    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    if-nez v0, :cond_3

    .line 209
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "seqPos":I
    .restart local v0    # "seqPos":I
    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->revokedCertificates:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move v1, v0

    .line 212
    .end local v0    # "seqPos":I
    .restart local v1    # "seqPos":I
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 213
    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_4

    .line 215
    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->crlExtensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    .line 217
    :cond_4
    return-void

    .line 180
    .end local v1    # "seqPos":I
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

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;
    .locals 1
    .param p0, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 157
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 163
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;

    if-eqz v0, :cond_0

    .line 165
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;

    return-object v0

    .line 167
    :cond_0
    if-eqz p0, :cond_1

    .line 169
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 172
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->crlExtensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    return-object v0
.end method

.method public blacklist getIssuer()Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    return-object v0
.end method

.method public blacklist getNextUpdate()Lcom/android/internal/org/bouncycastle/asn1/x509/Time;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->nextUpdate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    return-object v0
.end method

.method public blacklist getRevokedCertificateEnumeration()Ljava/util/Enumeration;
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->revokedCertificates:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    if-nez v0, :cond_0

    .line 274
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$EmptyEnumeration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$EmptyEnumeration;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$EmptyEnumeration-IA;)V

    return-object v0

    .line 277
    :cond_0
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$RevokedCertificatesEnumeration;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$RevokedCertificatesEnumeration;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;Ljava/util/Enumeration;)V

    return-object v1
.end method

.method public blacklist getRevokedCertificates()[Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    .locals 3

    .line 255
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->revokedCertificates:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    if-nez v0, :cond_0

    .line 257
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    return-object v0

    .line 260
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    .line 262
    .local v0, "entries":[Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 264
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->revokedCertificates:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v2, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    move-result-object v2

    aput-object v2, v0, v1

    .line 262
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 267
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public blacklist getSignature()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->signature:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public blacklist getThisUpdate()Lcom/android/internal/org/bouncycastle/asn1/x509/Time;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->thisUpdate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    return-object v0
.end method

.method public blacklist getVersion()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public blacklist getVersionNumber()I
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 223
    return v1

    .line 225
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    .line 287
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 289
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->version:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_0

    .line 291
    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 293
    :cond_0
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->signature:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 294
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->issuer:Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 296
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->thisUpdate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 297
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->nextUpdate:Lcom/android/internal/org/bouncycastle/asn1/x509/Time;

    if-eqz v1, :cond_1

    .line 299
    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 303
    :cond_1
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->revokedCertificates:Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_2

    .line 305
    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 308
    :cond_2
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertList;->crlExtensions:Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    if-eqz v1, :cond_3

    .line 310
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 313
    :cond_3
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
