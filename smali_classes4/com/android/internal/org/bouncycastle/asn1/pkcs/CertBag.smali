.class public Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "CertBag.java"


# instance fields
.field private blacklist certId:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private blacklist certValue:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0
    .param p1, "certId"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "certValue"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 47
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;->certId:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 49
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;->certValue:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 50
    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 1
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 25
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;->certId:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 27
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;->certValue:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 28
    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .line 32
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;

    if-eqz v0, :cond_0

    .line 34
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;

    return-object v0

    .line 36
    :cond_0
    if-eqz p0, :cond_1

    .line 38
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 41
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getCertId()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;->certId:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public blacklist getCertValue()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;->certValue:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    .line 64
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 66
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;->certId:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 67
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/CertBag;->certValue:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 69
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
