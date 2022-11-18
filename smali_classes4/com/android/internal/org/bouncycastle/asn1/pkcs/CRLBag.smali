.class public Lcom/android/internal/org/bouncycastle/asn1/pkcs/CRLBag;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "CRLBag.java"


# instance fields
.field private blacklist crlId:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private blacklist crlValue:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0
    .param p1, "crlId"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "crlValue"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 48
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CRLBag;->crlId:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 50
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CRLBag;->crlValue:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 51
    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 1
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 26
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CRLBag;->crlId:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 28
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CRLBag;->crlValue:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 29
    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/CRLBag;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .line 33
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CRLBag;

    if-eqz v0, :cond_0

    .line 35
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CRLBag;

    return-object v0

    .line 37
    :cond_0
    if-eqz p0, :cond_1

    .line 39
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CRLBag;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CRLBag;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 42
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getCrlId()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CRLBag;->crlId:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public blacklist getCrlValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CRLBag;->crlValue:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    .line 81
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 83
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CRLBag;->crlId:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 84
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CRLBag;->crlValue:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 86
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
