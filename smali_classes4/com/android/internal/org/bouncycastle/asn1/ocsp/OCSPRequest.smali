.class public Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "OCSPRequest.java"


# instance fields
.field blacklist optionalSignature:Lcom/android/internal/org/bouncycastle/asn1/ocsp/Signature;

.field blacklist tbsRequest:Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 31
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;->tbsRequest:Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;

    .line 34
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 36
    nop

    .line 37
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 36
    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/Signature;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ocsp/Signature;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;->optionalSignature:Lcom/android/internal/org/bouncycastle/asn1/ocsp/Signature;

    .line 39
    :cond_0
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;Lcom/android/internal/org/bouncycastle/asn1/ocsp/Signature;)V
    .locals 0
    .param p1, "tbsRequest"    # Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;
    .param p2, "optionalSignature"    # Lcom/android/internal/org/bouncycastle/asn1/ocsp/Signature;

    .line 24
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;->tbsRequest:Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;

    .line 26
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;->optionalSignature:Lcom/android/internal/org/bouncycastle/asn1/ocsp/Signature;

    .line 27
    return-void
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;
    .locals 1
    .param p0, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 45
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 51
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;

    if-eqz v0, :cond_0

    .line 53
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;

    return-object v0

    .line 55
    :cond_0
    if-eqz p0, :cond_1

    .line 57
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 60
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getOptionalSignature()Lcom/android/internal/org/bouncycastle/asn1/ocsp/Signature;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;->optionalSignature:Lcom/android/internal/org/bouncycastle/asn1/ocsp/Signature;

    return-object v0
.end method

.method public blacklist getTbsRequest()Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;->tbsRequest:Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    .line 83
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 85
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;->tbsRequest:Lcom/android/internal/org/bouncycastle/asn1/ocsp/TBSRequest;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 87
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/OCSPRequest;->optionalSignature:Lcom/android/internal/org/bouncycastle/asn1/ocsp/Signature;

    if-eqz v1, :cond_0

    .line 89
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v1}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 92
    :cond_0
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
