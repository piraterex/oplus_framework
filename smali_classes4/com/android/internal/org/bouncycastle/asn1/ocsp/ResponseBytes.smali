.class public Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseBytes;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "ResponseBytes.java"


# instance fields
.field blacklist response:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

.field blacklist responseType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;)V
    .locals 0
    .param p1, "responseType"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "response"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 31
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseBytes;->responseType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 33
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseBytes;->response:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 34
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 1
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 41
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseBytes;->responseType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 43
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseBytes;->response:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    .line 44
    return-void
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseBytes;
    .locals 1
    .param p0, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 50
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseBytes;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseBytes;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseBytes;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 56
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseBytes;

    if-eqz v0, :cond_0

    .line 58
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseBytes;

    return-object v0

    .line 60
    :cond_0
    if-eqz p0, :cond_1

    .line 62
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseBytes;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseBytes;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 65
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getResponse()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseBytes;->response:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public blacklist getResponseType()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseBytes;->responseType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 88
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 90
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseBytes;->responseType:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 91
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/ResponseBytes;->response:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 93
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
